package org.example;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;

@Entity
@Table(name = "scope_users")
public class ScopeUser {

    @Id
    @GeneratedValue
    private int id;

    private String fullName;

    @ManyToOne
    @JoinColumn(name = "scope_id")
    @JsonBackReference
    private Scope scope;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Scope getScope() {
        return scope;
    }

    public void setScope(Scope scope) {
        this.scope = scope;
    }

}
