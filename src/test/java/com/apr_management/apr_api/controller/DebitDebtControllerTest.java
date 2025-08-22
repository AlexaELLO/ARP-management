package com.apr_management.apr_api.controller;

import com.apr_management.apr_api.dto.ProductDto;
import io.zonky.test.db.AutoConfigureEmbeddedDatabase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

import static io.zonky.test.db.AutoConfigureEmbeddedDatabase.DatabaseProvider.ZONKY;


@SpringBootTest
@AutoConfigureMockMvc(printOnlyOnFailure = false)
@AutoConfigureEmbeddedDatabase(provider = ZONKY)
public class DebitDebtControllerTest {

    @Autowired
    DebitDebtController debitDebtController;

    @Autowired
    private MockMvc mockMvc;

    void createDebitDebt_success() {
        // Given
        var productId = UUID.randomUUID();
        var beginDate = LocalDateTime.now();
        var expirationDate = LocalDateTime.now().plusDays(1);
        var productDtoRequest = getProductDtoRequest(productId, beginDate, expirationDate);

        // When
        debitDebtController.createDebitDebt(productDtoRequest);

        //Then


    }

    private ProductDto getProductDtoRequest(
            UUID productId,
            LocalDateTime beginDate,
            LocalDateTime expirationDate) {
        ProductDto productDto = new ProductDto();

        productDto.setId(productId);
        productDto.setProductType("DZ");
        productDto.setBalance(BigDecimal.valueOf(100));
        productDto.setBeginDate(beginDate);
        productDto.setExpireDate(expirationDate);

        return productDto;
    };

}
