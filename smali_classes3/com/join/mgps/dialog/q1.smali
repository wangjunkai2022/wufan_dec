.class public Lcom/join/mgps/dialog/q1;
.super Ljava/lang/Object;
.source "PostingSelectCoinsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/q1$c;,
        Lcom/join/mgps/dialog/q1$d;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/GridView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dialog/q1$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/join/mgps/dialog/q1$d;

.field private f:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dialog/q1;->e()V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/q1;->f:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/q1;->f(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/q1;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/q1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/dialog/q1;->g:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/q1;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/q1;->f:Lcom/join/mgps/activity/posting/PostingActivity$m;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/16 v2, 0x1e

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/16 v2, 0x32

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/16 v2, 0x3c

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/16 v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/dialog/q1$c;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$c;-><init>(Lcom/join/mgps/dialog/q1;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method f(Landroid/app/Activity;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e3

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/dialog/q1;->a:Landroid/app/Dialog;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c018e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0907ee

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/dialog/q1$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/q1$a;-><init>(Lcom/join/mgps/dialog/q1;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0910e8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/dialog/q1;->b:Landroid/widget/TextView;

    const v1, 0x7f0909d7

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/join/mgps/dialog/q1;->c:Landroid/widget/GridView;

    .line 6
    new-instance v1, Lcom/join/mgps/dialog/q1$d;

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/dialog/q1$d;-><init>(Lcom/join/mgps/dialog/q1;Lcom/join/mgps/dialog/q1$a;)V

    iput-object v1, p0, Lcom/join/mgps/dialog/q1;->e:Lcom/join/mgps/dialog/q1$d;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/dialog/q1;->c:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dialog/q1;->c:Landroid/widget/GridView;

    new-instance v2, Lcom/join/mgps/dialog/q1$b;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/dialog/q1$b;-><init>(Lcom/join/mgps/dialog/q1;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/q1;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/q1;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public g(Ljava/lang/String;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dialog/q1;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u53ef\u7528\u94dc\u677f\u6570\uff1a<font color=#000000>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dialog/q1$c;

    iget v1, v1, Lcom/join/mgps/dialog/q1$c;->a:I

    if-ne v1, p2, :cond_0

    move p1, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz p1, :cond_2

    .line 6
    iget-object p2, p0, Lcom/join/mgps/dialog/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/q1$c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/q1$c;->b(Z)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/q1;->e:Lcom/join/mgps/dialog/q1$d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/q1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
