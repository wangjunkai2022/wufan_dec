.class public Lcom/join/mgps/activity/l0$a0;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a0"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:I

.field final synthetic d:Lcom/join/mgps/activity/l0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/l0;ZLandroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$a0;->d:Lcom/join/mgps/activity/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/activity/l0$a0;->a:Z

    .line 3
    iput-object p3, p0, Lcom/join/mgps/activity/l0$a0;->b:Landroid/view/View;

    .line 4
    iput p4, p0, Lcom/join/mgps/activity/l0$a0;->c:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/l0$a0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/l0$a0;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/l0$a0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/l0$a0;->c:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/activity/l0$a0;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/l0$a0;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/l0$a0;->c:I

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l0$a0;->b:Landroid/view/View;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/l0$a0;->a:Z

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/l0$a0;->c:I

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/l0$a0;->a:Z

    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$a0;->b:Landroid/view/View;

    return-void
.end method
