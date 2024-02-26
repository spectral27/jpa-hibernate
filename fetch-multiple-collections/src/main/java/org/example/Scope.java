package org.example;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import java.util.List;

@Entity
public class Scope {

    @Id
    @GeneratedValue
    private int id;

    private String name;

    @OneToMany(mappedBy = "scope")
    List<ScopeUser> users;

    @OneToMany(mappedBy = "scope")
    List<ScopeVersion> versions;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<ScopeUser> getUsers() {
        return users;
    }

    public void setUsers(List<ScopeUser> users) {
        this.users = users;
    }

    public List<ScopeVersion> getVersions() {
        return versions;
    }

    public void setVersions(List<ScopeVersion> versions) {
        this.versions = versions;
    }

}
