.class final Lorg/androidannotations/api/b$b;
.super Ljava/lang/Object;
.source "UiThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:I

.field final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/androidannotations/api/b$b;->a:I

    .line 4
    iput-object p1, p0, Lorg/androidannotations/api/b$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/androidannotations/api/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/androidannotations/api/b$b;-><init>(Ljava/lang/String;)V

    return-void
.end method
