package com.csc340.crudapp.task;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Table(name = "task")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Task {

    @Id
    @GeneratedValue()
    private long taskID;

    @Column(nullable = false)
    @NonNull
    private String taskName;

    @Column(nullable = false)
    @NonNull
    private LocalDate taskDate;

    @Column(nullable = false)
    @NonNull
    private String status;

    private String details;
}
