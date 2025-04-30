.class Lcom/join/mgps/customview/ActivityTabView$a;
.super Ljava/lang/Object;
.source "ActivityTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ActivityTabView;->b(Lcom/join/mgps/dto/BTActivityBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ActivityTabView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ActivityTabView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$a;->a:Lcom/join/mgps/customview/ActivityTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$a;->a:Lcom/join/mgps/customview/ActivityTabView;

    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$a;->a:Lcom/join/mgps/customview/ActivityTabView;

    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/customview/ActivityTabView$d;->b()V

    :cond_0
    return-void
.end method
