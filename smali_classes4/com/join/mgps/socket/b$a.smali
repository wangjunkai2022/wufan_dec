.class final Lcom/join/mgps/socket/b$a;
.super Ljava/lang/Object;
.source "SocketCommendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/join/mgps/socket/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/socket/b;

    invoke-direct {v0}, Lcom/join/mgps/socket/b;-><init>()V

    sput-object v0, Lcom/join/mgps/socket/b$a;->a:Lcom/join/mgps/socket/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
