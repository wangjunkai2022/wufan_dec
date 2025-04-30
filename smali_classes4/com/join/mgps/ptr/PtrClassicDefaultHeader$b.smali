.class Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;
.super Ljava/lang/Object;
.source "PtrClassicDefaultHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/PtrClassicDefaultHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;


# direct methods
.method private constructor <init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->d()V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->run()V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
