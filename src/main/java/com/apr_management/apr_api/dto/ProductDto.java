package com.apr_management.apr_api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto {

    private UUID id;

    private String productType;

    private String name;

    private BigDecimal balance;

    private LocalDateTime beginDate;

    private LocalDateTime expireDate;

}
