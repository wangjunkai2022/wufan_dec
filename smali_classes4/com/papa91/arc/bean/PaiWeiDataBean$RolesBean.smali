.class public Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;
.super Ljava/lang/Object;
.source "PaiWeiDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/bean/PaiWeiDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RolesBean"
.end annotation


# instance fields
.field private isChecked:Z

.field private role:Ljava/lang/String;

.field private role_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getRole()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getRole_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->role_id:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->isChecked:Z

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->role:Ljava/lang/String;

    return-void
.end method

.method public setRole_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->role_id:Ljava/lang/String;

    return-void
.end method
