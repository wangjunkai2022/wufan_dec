.class public Lcom/xinzhu/overmind/server/h;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final b:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "priority",
            "allowIo"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/xinzhu/overmind/server/h;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method
