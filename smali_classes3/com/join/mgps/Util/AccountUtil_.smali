.class public final Lcom/join/mgps/Util/AccountUtil_;
.super Lcom/join/mgps/Util/b;
.source "AccountUtil_.java"


# static fields
.field private static instance_:Lcom/join/mgps/Util/AccountUtil_;


# instance fields
.field private context_:Landroid/content/Context;

.field private rootFragment_:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/AccountUtil_;->context_:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/Util/b;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/AccountUtil_;->context_:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/Util/AccountUtil_;->rootFragment_:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/AccountUtil_;->instance_:Lcom/join/mgps/Util/AccountUtil_;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/AccountUtil_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/AccountUtil_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/join/mgps/Util/AccountUtil_;->instance_:Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    invoke-direct {v1}, Lcom/join/mgps/Util/AccountUtil_;->init_()V

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    .line 6
    :cond_0
    sget-object p0, Lcom/join/mgps/Util/AccountUtil_;->instance_:Lcom/join/mgps/Util/AccountUtil_;

    return-object p0
.end method

.method private init_()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/Util/AccountUtil_;->context_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    return-void
.end method
