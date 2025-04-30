.class Lcom/join/mgps/adapter/h4$u1;
.super Ljava/lang/Object;
.source "PapaMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "u1"
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/join/mgps/customview/HorizontalRecyclerView;

.field final synthetic c:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$u1;->c:Lcom/join/mgps/adapter/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/h4$u1;)Lcom/join/mgps/customview/HorizontalRecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h4$u1;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/h4$u1;Lcom/join/mgps/customview/HorizontalRecyclerView;)Lcom/join/mgps/customview/HorizontalRecyclerView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$u1;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/adapter/h4$u1;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$u1;->a:Landroid/widget/FrameLayout;

    return-object p1
.end method
