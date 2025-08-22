package com.apr_management.apr_api.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "t_product")
public class Product {

    @Id
    private UUID id;
    private UUID product_type_id;
    private String name;
    private BigDecimal balance;
    private LocalDateTime begin_date;
    private LocalDateTime expiration_date;
}
