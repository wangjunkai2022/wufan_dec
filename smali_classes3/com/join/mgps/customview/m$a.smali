.class Lcom/join/mgps/customview/m$a;
.super Ljava/lang/Object;
.source "LoopPagerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:I

.field c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/m$a;->a:Landroid/view/ViewGroup;

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/m$a;->b:I

    .line 4
    iput-object p3, p0, Lcom/join/mgps/customview/m$a;->c:Ljava/lang/Object;

    return-void
.end method
