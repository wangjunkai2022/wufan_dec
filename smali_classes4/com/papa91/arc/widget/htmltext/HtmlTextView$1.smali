.class Lcom/papa91/arc/widget/htmltext/HtmlTextView$1;
.super Ljava/lang/Object;
.source "HtmlTextView.java"

# interfaces
.implements Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/htmltext/HtmlTextView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView$1;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideTagClickListener()Lcom/papa91/arc/widget/htmltext/OnClickATagListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView$1;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-static {v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->access$000(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    move-result-object v0

    return-object v0
.end method
