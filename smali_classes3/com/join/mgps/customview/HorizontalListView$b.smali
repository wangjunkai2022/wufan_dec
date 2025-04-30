.class Lcom/join/mgps/customview/HorizontalListView$b;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HorizontalListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView$b;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$b;->a:Lcom/join/mgps/customview/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
