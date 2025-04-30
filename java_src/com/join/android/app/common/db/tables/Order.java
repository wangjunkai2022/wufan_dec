package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;
@DatabaseTable(tableName = "t_order")
/* loaded from: classes.dex */
public class Order {
    @DatabaseField(columnName = "account_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private Account account;
    @DatabaseField
    public Date date;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String name;

    public Account getAccount() {
        return this.account;
    }

    public Date getDate() {
        return this.date;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }
}
