.class public Lcom/xinzhu/overmind/client/hook/a;
.super Ljava/lang/Object;
.source "AppLifecycleCallback.java"


# static fields
.field public static a:Lcom/xinzhu/overmind/client/hook/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/a$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/a$a;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/a;->a:Lcom/xinzhu/overmind/client/hook/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "application"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "application"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "context"
        }
    .end annotation

    return-void
.end method
