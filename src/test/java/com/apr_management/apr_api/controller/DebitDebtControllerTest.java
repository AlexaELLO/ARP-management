package com.apr_management.apr_api.controller;

import io.zonky.test.db.AutoConfigureEmbeddedDatabase;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;

import static io.zonky.test.db.AutoConfigureEmbeddedDatabase.DatabaseProvider.ZONKY;


@SpringBootTest
@AutoConfigureMockMvc(printOnlyOnFailure = false)
@AutoConfigureEmbeddedDatabase(provider = ZONKY)
public class DebitDebtControllerTest {


}
