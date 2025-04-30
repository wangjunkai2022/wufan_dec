.class public abstract Lcom/join/mgps/dto/CommonRequestBeanInterface;
.super Ljava/lang/Object;
.source "CommonRequestBeanInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonRequestBeanInterface;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonRequestBeanInterface;->object:Ljava/lang/Object;

    return-void
.end method
