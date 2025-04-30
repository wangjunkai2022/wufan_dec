.class public Lcom/xinzhu/overmind/server/am/i;
.super Ljava/lang/Object;
.source "UserSpace.java"


# instance fields
.field public final a:Lcom/xinzhu/overmind/server/am/a;

.field public final b:Lcom/xinzhu/overmind/server/am/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/am/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/a;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/server/am/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/c;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    return-void
.end method
