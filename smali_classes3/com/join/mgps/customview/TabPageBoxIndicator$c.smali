.class Lcom/join/mgps/customview/TabPageBoxIndicator$c;
.super Ljava/lang/Object;
.source "TabPageBoxIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/TabPageBoxIndicator;->e(ILjava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/customview/TabPageBoxIndicator;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/TabPageBoxIndicator;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->b:Lcom/join/mgps/customview/TabPageBoxIndicator;

    iput p2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->b:Lcom/join/mgps/customview/TabPageBoxIndicator;

    iget v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->a:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->setCurrentItem(I)V

    return-void
.end method
