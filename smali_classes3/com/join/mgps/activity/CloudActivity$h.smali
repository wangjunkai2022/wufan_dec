.class Lcom/join/mgps/activity/CloudActivity$h;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity;->M0(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$h;->a:Lcom/join/mgps/activity/CloudActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "onFailure--------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "onSuccess--------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
