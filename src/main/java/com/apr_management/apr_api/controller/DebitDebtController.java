package com.apr_management.apr_api.controller;

import com.apr_management.apr_api.dto.ProductDto;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/debitDebt")
public interface DebitDebtController {

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping
    ProductDto createDebitDebt(ProductDto productDto);
}
