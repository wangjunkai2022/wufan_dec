.class public Lcom/join/mgps/activity/login/LoginResultMain$DataBean;
.super Ljava/lang/Object;
.source "LoginResultMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/login/LoginResultMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private is_new_members:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIs_new_members()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginResultMain$DataBean;->is_new_members:Z

    return v0
.end method

.method public setIs_new_members(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/login/LoginResultMain$DataBean;->is_new_members:Z

    return-void
.end method
