.class public Lcom/xinzhu/overmind/server/am/a$b;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/am/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/am/a$b;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/am/a$b;->a:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic b(Lcom/xinzhu/overmind/server/am/a$b;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$b;->b:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic c(Lcom/xinzhu/overmind/server/am/a$b;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/am/a$b;->b:Landroid/content/Intent;

    return-object p1
.end method
