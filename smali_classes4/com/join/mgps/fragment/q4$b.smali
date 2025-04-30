.class Lcom/join/mgps/fragment/q4$b;
.super Li1/a;
.source "SearchGameListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/q4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q4$b;->a:Lcom/join/mgps/fragment/q4;

    invoke-direct {p0}, Li1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Li1/a$b;
    .locals 2

    .line 1
    new-instance p1, Li1/a$a;

    invoke-direct {p1}, Li1/a$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Li1/a$a;->f:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$b;->a:Lcom/join/mgps/fragment/q4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f87

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Li1/a$b;->a:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$b;->a:Lcom/join/mgps/fragment/q4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Li1/a$b;->b:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$b;->a:Lcom/join/mgps/fragment/q4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Li1/a$b;->c:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$b;->a:Lcom/join/mgps/fragment/q4;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Li1/a$b;->d:I

    return-object p1
.end method
