.class public Lcom/join/mgps/Util/c0;
.super Ljava/lang/Object;
.source "EventBusUtil.java"


# static fields
.field private static a:Lcom/join/mgps/Util/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/c0;

    invoke-direct {v0}, Lcom/join/mgps/Util/c0;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/c0;->a:Lcom/join/mgps/Util/c0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/join/mgps/Util/c0;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/c0;->a:Lcom/join/mgps/Util/c0;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method
