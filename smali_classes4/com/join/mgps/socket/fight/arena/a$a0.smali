.class Lcom/join/mgps/socket/fight/arena/a$a0;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a0"
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "_v2_lob_2."

.field private static final z:Ljava/lang/String; = "_lob."


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/join/mgps/dto/ArchiveBean;

.field private q:Landroid/content/Context;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArchiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Z

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/LinearLayout;

.field w:Landroid/widget/RelativeLayout;

.field x:Z

.field final synthetic y:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method public varargs constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->x:Z

    .line 5
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->q:Landroid/content/Context;

    .line 6
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a$a0;->l(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 7
    aget-object p2, p3, p2

    check-cast p2, Lcom/join/mgps/dto/ArchiveBean;

    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->i(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/socket/fight/arena/a$a0;)Lcom/join/mgps/dto/ArchiveBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/a$a0;Lcom/join/mgps/dto/ArchiveBean;)Lcom/join/mgps/dto/ArchiveBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method private h([Ljava/io/File;Ljava/io/File;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "3"

    const-string v4, "2"

    const-string v5, "1"

    const/4 v6, 0x1

    if-ge v2, v0, :cond_2

    aget-object v7, p1, v2

    .line 3
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_v2_lob_2."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    .line 7
    array-length v2, p1

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v7, p1, v1

    .line 8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_lob."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 12
    :cond_4
    :goto_4
    iput-boolean v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->x:Z

    :cond_5
    return v0
.end method

.method private k(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1204e2

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/a;->j(Lcom/join/mgps/socket/fight/arena/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a;->i(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/a;->i(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0189

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090d67

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->w:Landroid/widget/RelativeLayout;

    const v0, 0x7f09114c

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->u:Landroid/widget/TextView;

    const v0, 0x7f090911

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->v:Landroid/widget/LinearLayout;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->v:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0907d9

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->d:Landroid/widget/ImageView;

    const v0, 0x7f0907da

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->e:Landroid/widget/ImageView;

    const v0, 0x7f0907db

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->f:Landroid/widget/ImageView;

    const v0, 0x7f0910cc

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    const v0, 0x7f0910cd

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    const v0, 0x7f0910ce

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    const v0, 0x7f09113f

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    const v0, 0x7f091140

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    const v0, 0x7f091141

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    const v0, 0x7f0907eb

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    const v0, 0x7f0907ec

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    const v0, 0x7f0907ed

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    const v0, 0x7f090d4f

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    .line 25
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$a0$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$a;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090d50

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    .line 27
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$a0$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$b;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090d51

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    .line 29
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$a0$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$c;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v0, p1}, Lcom/join/mgps/socket/fight/arena/a;->c(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    const/16 v2, 0x11

    invoke-static {v0, p1, v2, v1, v1}, Lcom/join/mgps/socket/fight/arena/a;->d(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;III)V

    return-void
.end method

.method private m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 2
    :goto_1
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ArchiveBean;->getIconFile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ArchiveBean;->getUpdate_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getIconFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveBean;->getUpdate_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 12
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getIconFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveBean;->getUpdate_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    if-eqz v0, :cond_5

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-direct {p0, v3}, Lcom/join/mgps/socket/fight/arena/a$a0;->p(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private o(Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ".png"

    const-string v7, "/"

    if-eqz v5, :cond_0

    .line 4
    new-instance v5, Lcom/join/mgps/dto/ArchiveBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/ArchiveBean;-><init>()V

    .line 5
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setRecordFile(Ljava/lang/String;)V

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setIconFile(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/join/mgps/dto/ArchiveBean;->setFileTime(J)V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/join/mgps/socket/fight/arena/a$a0;->k(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setUpdate_time(Ljava/lang/String;)V

    .line 9
    iget-object v8, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "2"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    new-instance v5, Lcom/join/mgps/dto/ArchiveBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/ArchiveBean;-><init>()V

    .line 12
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setRecordFile(Ljava/lang/String;)V

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setIconFile(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/join/mgps/socket/fight/arena/a$a0;->k(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setUpdate_time(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/join/mgps/dto/ArchiveBean;->setFileTime(J)V

    .line 16
    iget-object v8, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "3"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    new-instance v5, Lcom/join/mgps/dto/ArchiveBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/ArchiveBean;-><init>()V

    .line 19
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setRecordFile(Ljava/lang/String;)V

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setIconFile(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/join/mgps/socket/fight/arena/a$a0;->k(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setUpdate_time(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/join/mgps/dto/ArchiveBean;->setFileTime(J)V

    .line 23
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    new-instance p2, Lcom/join/mgps/socket/fight/arena/a$a0$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$d;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveBean;

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5b58\u6863"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ArchiveBean;->setShowName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private p(I)V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f080180

    const/16 v2, 0x8

    const v3, 0x7f080185

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    return v0

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a$a0;->m()V

    return p1
.end method

.method j(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/f0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v1, "_lob."

    .line 9
    invoke-direct {p0, v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a$a0;->o(Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    return v0
.end method
