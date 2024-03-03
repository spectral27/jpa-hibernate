package org.example;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Scope {

    @Id
    @GeneratedValue
    private int id;

    private String name;

    @ManyToMany
    private List<Topic> topics;

    /*
    @ManyToMany
    @JoinTable(
            name = "scope-topic-relationtable-name",
            joinColumns = @JoinColumn(name = "scopeid"),
            inverseJoinColumns = @JoinColumn(name = "topicid")
    )
    */

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

    public List<Topic> getTopics() {
        return topics;
    }

    public void setTopics(List<Topic> topics) {
        this.topics = topics;
    }

}
