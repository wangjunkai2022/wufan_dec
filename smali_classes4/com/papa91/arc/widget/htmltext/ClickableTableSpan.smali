.class public abstract Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickableTableSpan.java"


# instance fields
.field protected tableHtml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public getTableHtml()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;->tableHtml:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newInstance()Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
.end method

.method public setTableHtml(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;->tableHtml:Ljava/lang/String;

    return-void
.end method
