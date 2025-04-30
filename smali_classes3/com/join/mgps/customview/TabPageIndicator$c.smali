.class Lcom/join/mgps/customview/TabPageIndicator$c;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/TabPageIndicator;->e(ILjava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/customview/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/TabPageIndicator;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator$c;->b:Lcom/join/mgps/customview/TabPageIndicator;

    iput p2, p0, Lcom/join/mgps/customview/TabPageIndicator$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator$c;->b:Lcom/join/mgps/customview/TabPageIndicator;

    iget v0, p0, Lcom/join/mgps/customview/TabPageIndicator$c;->a:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method
