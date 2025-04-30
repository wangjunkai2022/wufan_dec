.class Lcom/join/mgps/adapter/p$p0;
.super Ljava/lang/Object;
.source "DownloadCenterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "p0"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field final synthetic f:Lcom/join/mgps/adapter/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$p0;->f:Lcom/join/mgps/adapter/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/p$p0;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/p$p0;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/p$p0;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$p0;->e:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/adapter/p$p0;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/p$p0;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/p$p0;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p$p0;->d:Landroid/widget/TextView;

    return-object p1
.end method
