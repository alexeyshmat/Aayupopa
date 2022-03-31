package ru.mirea.trpp2nd1.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

/** Ответ на healthCheck. */
@Getter
@Setter
@AllArgsConstructor
public class HealthResponse {

    /** Статус работы. */
    private String status;

}
