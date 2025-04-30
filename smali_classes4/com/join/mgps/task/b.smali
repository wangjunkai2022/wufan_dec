.class public Lcom/join/mgps/task/b;
.super Ljava/lang/Object;
.source "FileDeletRunable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/task/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/task/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/task/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/g0;->i(Ljava/lang/String;)Z

    return-void
.end method
