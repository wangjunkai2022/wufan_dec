.class Lcom/join/mgps/dialog/r$a;
.super Ljava/lang/Object;
.source "ChangeNameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/r;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/r;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r$a;->a:Lcom/join/mgps/dialog/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->a:Lcom/join/mgps/dialog/r;

    invoke-static {p1}, Lcom/join/mgps/dialog/r;->a(Lcom/join/mgps/dialog/r;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$"

    .line 3
    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->a:Lcom/join/mgps/dialog/r;

    invoke-static {p1}, Lcom/join/mgps/dialog/r;->b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7528\u6237\u540d\u4e3a\u4e2d\u6587/\u5b57\u6bcd/\u6570\u5b57/\u4e0b\u5212\u7ebf,\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->a:Lcom/join/mgps/dialog/r;

    invoke-static {p1}, Lcom/join/mgps/dialog/r;->b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u4e3a\u4fdd\u62a4\u4f60\u7684\u4fe1\u606f\u5b89\u5168\uff0c\u7528\u6237\u540d\u4e0d\u80fd\u7c7b\u4f3c\u624b\u673a\u53f7\u54e6"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/r$a;->a:Lcom/join/mgps/dialog/r;

    invoke-static {v0}, Lcom/join/mgps/dialog/r;->c(Lcom/join/mgps/dialog/r;)Lcom/join/mgps/dialog/r$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/dialog/r$c;->l(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->a:Lcom/join/mgps/dialog/r;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 9
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->a:Lcom/join/mgps/dialog/r;

    invoke-static {p1}, Lcom/join/mgps/dialog/r;->b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7528\u6237\u540d\u4e3a1~12\u4e2a\u5b57\u7b26\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
