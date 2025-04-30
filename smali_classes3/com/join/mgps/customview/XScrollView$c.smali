.class Lcom/join/mgps/customview/XScrollView$c;
.super Ljava/lang/Object;
.source "XScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XScrollView;->s(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XScrollView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XScrollView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XScrollView$c;->a:Lcom/join/mgps/customview/XScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView$c;->a:Lcom/join/mgps/customview/XScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
