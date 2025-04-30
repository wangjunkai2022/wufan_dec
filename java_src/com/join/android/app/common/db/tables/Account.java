package com.join.android.app.common.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;
/* loaded from: classes.dex */
public class Account {
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField(index = true)
    private String name;
    @ForeignCollectionField(eager = false)
    ForeignCollection<Order> orders;

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public ForeignCollection<Order> getOrders() {
        return this.orders;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOrders(ForeignCollection<Order> foreignCollection) {
        this.orders = foreignCollection;
    }
}
