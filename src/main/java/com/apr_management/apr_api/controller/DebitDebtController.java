package com.apr_management.apr_api.controller;

import com.apr_management.apr_api.dto.ProductDto;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/debitDebt")
public interface DebitDebtController {

    ProductDto createDebitDebt(ProductDto
                                       productDto);
}
