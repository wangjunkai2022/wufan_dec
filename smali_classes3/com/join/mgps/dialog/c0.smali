.class public Lcom/join/mgps/dialog/c0;
.super Landroid/app/Dialog;
.source "CouponDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/c0$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo1/c;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/c0;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/c0;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lo1/c;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;",
            "Lo1/c;",
            "IZ)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/dialog/c0;->a:Z

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/dialog/c0;->c:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcom/join/mgps/dialog/c0;->d:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/join/mgps/dialog/c0;->e:Lo1/c;

    .line 11
    iput p5, p0, Lcom/join/mgps/dialog/c0;->b:I

    .line 12
    iput-boolean p6, p0, Lcom/join/mgps/dialog/c0;->a:Z

    .line 13
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/join/mgps/dialog/c0;->a:Z

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/dialog/c0;->b:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/c0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c0;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/dialog/c0;->a:Z

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/c0;)Lo1/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c0;->e:Lo1/c;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/dialog/c0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c0;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/dialog/c0;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c0;->g:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/c0;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0506

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0908e1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f090b5c

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/dialog/c0;->g:Landroid/widget/Button;

    .line 6
    new-instance p1, Lcom/join/mgps/dialog/c0$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/c0$c;-><init>(Lcom/join/mgps/dialog/c0;)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    new-instance p1, Lcom/join/mgps/dialog/c0$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/c0$a;-><init>(Lcom/join/mgps/dialog/c0;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/c0;->g:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/dialog/c0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/c0$b;-><init>(Lcom/join/mgps/dialog/c0;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
