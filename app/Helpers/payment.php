<?php

function generateVNPayPaymentUrl($data) {
    date_default_timezone_set('Asia/Ho_Chi_Minh');

    $vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    $vnp_Returnurl = $data['vnp_ReturnUrl'];
    $vnp_TmnCode = config('payment.vnpay.code');
    $vnp_HashSecret = config('payment.vnpay.hash_secret');

    $vnp_TxnRef =  $data['order_id'];
    $vnp_OrderInfo =  $data['order_desc'];
    $vnp_OrderType =  $data['order_type'];
    $vnp_Amount =  $data['amount'] * 100;
    $vnp_Locale =  $data['language'];
    $vnp_BankCode =  $data['bank_code'];
    $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
    //Add Params of 2.0.1 Version
    $vnp_ExpireDate =  $data['txtexpire'];
    //Billing
    $vnp_Bill_Mobile =  $data['txt_billing_mobile'];
    $vnp_Bill_Email =  $data['txt_billing_email'];
    $fullName = trim( $data['txt_billing_fullname']);
    if (isset($fullName) && trim($fullName) != '') {
        $name = explode(' ', $fullName);
        $vnp_Bill_FirstName = array_shift($name);
        $vnp_Bill_LastName = array_pop($name);
    }
    $vnp_Bill_Address= $data['txt_inv_addr1'];
    $vnp_Bill_City= $data['txt_bill_city'];
    $vnp_Bill_Country= $data['txt_bill_country'];
    $vnp_Bill_State= $data['txt_bill_state'];
    // Invoice
    $vnp_Inv_Phone= $data['txt_inv_mobile'];
    $vnp_Inv_Email= $data['txt_inv_email'];
    $vnp_Inv_Customer= $data['txt_inv_customer'];
    $vnp_Inv_Address= $data['txt_inv_addr1'];
    $vnp_Inv_Company= $data['txt_inv_company'];
    $vnp_Inv_Taxcode= $data['txt_inv_taxcode'];
    $vnp_Inv_Type= $data['cbo_inv_type'];
    $inputData = array(
        "vnp_Version" => "2.1.0",
        "vnp_TmnCode" => $vnp_TmnCode,
        "vnp_Amount" => $vnp_Amount,
        "vnp_Command" => "pay",
        "vnp_CreateDate" => date('YmdHis'),
        "vnp_CurrCode" => "VND",
        "vnp_IpAddr" => $vnp_IpAddr,
        "vnp_Locale" => $vnp_Locale,
        "vnp_OrderInfo" => $vnp_OrderInfo,
        "vnp_OrderType" => $vnp_OrderType,
        "vnp_ReturnUrl" => $vnp_Returnurl,
        "vnp_TxnRef" => $vnp_TxnRef,
        "vnp_ExpireDate"=>$vnp_ExpireDate,
        "vnp_Bill_Mobile"=>$vnp_Bill_Mobile,
        "vnp_Bill_Email"=>$vnp_Bill_Email,
        "vnp_Bill_FirstName"=>$vnp_Bill_FirstName,
        "vnp_Bill_LastName"=>$vnp_Bill_LastName,
        "vnp_Bill_Address"=>$vnp_Bill_Address,
        "vnp_Bill_City"=>$vnp_Bill_City,
        "vnp_Bill_Country"=>$vnp_Bill_Country,
        "vnp_Inv_Phone"=>$vnp_Inv_Phone,
        "vnp_Inv_Email"=>$vnp_Inv_Email,
        "vnp_Inv_Customer"=>$vnp_Inv_Customer,
        "vnp_Inv_Address"=>$vnp_Inv_Address,
        "vnp_Inv_Company"=>$vnp_Inv_Company,
        "vnp_Inv_Taxcode"=>$vnp_Inv_Taxcode,
        "vnp_Inv_Type"=>$vnp_Inv_Type
    );

    if (isset($vnp_BankCode) && $vnp_BankCode != "") {
        $inputData['vnp_BankCode'] = $vnp_BankCode;
    }
    if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
        $inputData['vnp_Bill_State'] = $vnp_Bill_State;
    }

    //var_dump($inputData);
    ksort($inputData);
    $query = "";
    foreach ($inputData as $key => $value) {
        $query .= urlencode($key) . "=" . urlencode($value) . '&';
    }

    $vnp_Url = $vnp_Url . "?" . $query;
    if (isset($vnp_HashSecret)) {
        $vnpSecureHash = generateVNPaySignature($inputData);//  
        $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
    }
    
    return $vnp_Url;
}

function generateVNPaySignature($inputData) {
    $vnp_HashSecret = config('payment.vnpay.hash_secret');

    ksort($inputData);
    $i = 0;
    $hashdata = "";
    foreach ($inputData as $key => $value) {
        if ($i == 1) {
            $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
        } else {
            $hashdata .= urlencode($key) . "=" . urlencode($value);
            $i = 1;
        }
    }

    return hash_hmac('sha512', $hashdata, $vnp_HashSecret);
}