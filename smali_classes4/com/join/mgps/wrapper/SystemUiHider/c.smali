.class Lcom/join/mgps/wrapper/SystemUiHider/c;
.super Lcom/join/mgps/wrapper/SystemUiHider/b;
.source "SystemUiHiderHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private o:Landroid/view/View$OnSystemUiVisibilityChangeListener;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/wrapper/SystemUiHider/b;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->m:Z

    .line 3
    new-instance p2, Lcom/join/mgps/wrapper/SystemUiHider/c$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/wrapper/SystemUiHider/c$a;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/c;)V

    iput-object p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->n:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 4
    new-instance p2, Lcom/join/mgps/wrapper/SystemUiHider/c$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/wrapper/SystemUiHider/c$b;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/c;)V

    iput-object p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->o:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->j:I

    .line 6
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    .line 7
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->l:I

    .line 8
    iget p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_0

    or-int/lit16 p1, p1, 0x404

    .line 9
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    :cond_0
    and-int/lit8 p1, p2, 0x6

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->l:I

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->m:Z

    return p1
.end method

.method static synthetic i(Lcom/join/mgps/wrapper/SystemUiHider/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->l:I

    return p0
.end method

.method static synthetic j(Lcom/join/mgps/wrapper/SystemUiHider/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->j:I

    return p0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    or-int/lit8 v1, v1, 0x2

    or-int/lit16 v1, v1, 0x200

    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->m:Z

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->n:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    iget v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
