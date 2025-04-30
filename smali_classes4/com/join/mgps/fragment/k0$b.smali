.class Lcom/join/mgps/fragment/k0$b;
.super Li1/a;
.source "FindMiniGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/k0;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/k0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/k0$b;->a:Lcom/join/mgps/fragment/k0;

    invoke-direct {p0}, Li1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Li1/a$b;
    .locals 3

    .line 1
    new-instance v0, Li1/a$a;

    invoke-direct {v0}, Li1/a$a;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Li1/a$a;->f:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/k0$b;->a:Lcom/join/mgps/fragment/k0;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f87

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Li1/a$b;->a:I

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/k0$b;->a:Lcom/join/mgps/fragment/k0;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Li1/a$b;->b:I

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/k0$b;->a:Lcom/join/mgps/fragment/k0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Li1/a$b;->c:I

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/k0$b;->a:Lcom/join/mgps/fragment/k0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07110f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Li1/a$b;->c:I

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/fragment/k0$b;->a:Lcom/join/mgps/fragment/k0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Li1/a$b;->d:I

    return-object v0
.end method
