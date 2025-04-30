.class public Lbolts/h$p;
.super Lbolts/i;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbolts/i<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$p;->b:Lbolts/h;

    invoke-direct {p0}, Lbolts/i;-><init>()V

    return-void
.end method
