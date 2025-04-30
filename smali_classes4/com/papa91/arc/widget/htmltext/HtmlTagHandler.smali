.class public Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;
.super Ljava/lang/Object;
.source "HtmlTagHandler.java"

# interfaces
.implements Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;,
        Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;
    }
.end annotation


# static fields
.field public static final A_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_A_TAG"

.field public static final LIST_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_LI_TAG"

.field public static final ORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_OL_TAG"

.field public static final PLACEHOLDER_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_PLACEHOLDER"

.field public static final UNORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_UL_TAG"

.field private static final defaultBullet:Landroid/text/style/BulletSpan;

.field private static final defaultIndent:I = 0xa

.field private static final defaultListItemIndent:I = 0x14

.field private static userGivenIndent:I = -0x1


# instance fields
.field private clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

.field private drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

.field lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field olNextIndex:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onClickATagListenerProvider:Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

.field tableHtmlBuilder:Ljava/lang/StringBuilder;

.field tableTagLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/style/BulletSpan;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    sput-object v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->onClickATagListenerProvider:Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    return-object p0
.end method

.method private varargs end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    if-lez v3, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 6
    iget-object v3, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eq v1, v2, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "\n"

    .line 8
    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v2, v2, 0x1

    .line 9
    :cond_1
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v0, p4, p3

    const/16 v3, 0x21

    .line 10
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 4
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-object v1
.end method

.method private static getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    array-length v0, p1

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 4
    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 5
    aget-object p0, p1, v2

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x11

    .line 2
    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private storeTableTags(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    if-gtz v0, :cond_0

    const-string v0, "table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    const-class v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;

    const-class v5, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    const-string v6, "td"

    const-string v7, "th"

    const-string v8, "tr"

    const-string v9, "table"

    const-string v10, "strike"

    const-string v11, "s"

    const-string v12, "center"

    const-string v13, "code"

    const-string v14, "HTML_TEXTVIEW_ESCAPED_A_TAG"

    const-string v15, "HTML_TEXTVIEW_ESCAPED_LI_TAG"

    move-object/from16 v16, v4

    const-string v4, "\n"

    move-object/from16 v17, v5

    const-string v5, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    move-object/from16 v18, v6

    const-string v6, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    move-object/from16 v19, v7

    const/4 v7, 0x1

    if-eqz p1, :cond_10

    .line 2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 3
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 5
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 7
    :cond_1
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 8
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {v2, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v8, 0xa

    if-eq v3, v8, :cond_2

    .line 9
    invoke-interface {v2, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 10
    :cond_2
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 11
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 14
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 15
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 16
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 17
    :cond_4
    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    const-string v4, "href"

    .line 18
    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 19
    :goto_0
    new-instance v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;

    invoke-direct {v3, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 22
    :cond_7
    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 23
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;

    invoke-direct {v3, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :cond_8
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    .line 25
    :cond_9
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;

    invoke-direct {v3, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Table;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 27
    iget v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    if-nez v3, :cond_a

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v3, "table placeholder"

    .line 29
    invoke-interface {v2, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 30
    :cond_a
    iget v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    goto :goto_2

    .line 31
    :cond_b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 32
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    move-object/from16 v3, v19

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 34
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    move-object/from16 v3, v18

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 36
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    return v2

    :cond_f
    :goto_1
    move-object v4, v6

    .line 37
    new-instance v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;

    invoke-direct {v3, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_10
    move-object/from16 v21, v18

    move-object/from16 v3, v19

    const/16 v18, 0x0

    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 39
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_11
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_b

    .line 40
    :cond_12
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 41
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 42
    iget-object v2, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 43
    :cond_13
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    const/4 v7, 0x2

    if-eqz v15, :cond_1e

    .line 44
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 45
    sget v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    const/4 v8, -0x1

    if-le v3, v8, :cond_14

    mul-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_14
    const/16 v3, 0x14

    .line 46
    :goto_3
    iget-object v9, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 47
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_15

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v2, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_15

    .line 48
    invoke-interface {v2, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 49
    :cond_15
    sget v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    if-le v4, v8, :cond_16

    move/from16 v20, v4

    goto :goto_4

    :cond_16
    const/16 v20, 0xa

    :goto_4
    if-le v4, v8, :cond_17

    .line 50
    new-instance v4, Landroid/text/style/BulletSpan;

    sget v5, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    invoke-direct {v4, v5}, Landroid/text/style/BulletSpan;-><init>(I)V

    goto :goto_5

    :cond_17
    sget-object v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    .line 51
    :goto_5
    iget-object v5, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_18

    .line 52
    invoke-virtual {v4, v6}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int v20, v20, v4

    .line 53
    iget-object v4, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-le v4, v7, :cond_18

    .line 54
    iget-object v4, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    sub-int/2addr v4, v7

    mul-int v4, v4, v3

    sub-int v20, v20, v4

    :cond_18
    move/from16 v4, v20

    .line 55
    new-instance v5, Landroid/text/style/BulletSpan;

    invoke-direct {v5, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 56
    const-class v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ul;

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v8, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 57
    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    mul-int v3, v3, v8

    invoke-direct {v7, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v6, v3

    aput-object v5, v6, v9

    .line 58
    invoke-direct {v0, v2, v4, v3, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_19
    const/4 v9, 0x1

    .line 59
    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 60
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_1a

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-interface {v2, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1b

    .line 61
    invoke-interface {v2, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6

    :cond_1a
    const/16 v6, 0xa

    .line 62
    :cond_1b
    :goto_6
    sget v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    if-le v4, v8, :cond_1c

    goto :goto_7

    :cond_1c
    const/16 v4, 0xa

    .line 63
    :goto_7
    new-instance v5, Lcom/papa91/arc/widget/htmltext/NumberSpan;

    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-direct {v5, v4, v6}, Lcom/papa91/arc/widget/htmltext/NumberSpan;-><init>(II)V

    .line 64
    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-le v6, v8, :cond_1d

    .line 65
    invoke-virtual {v5, v8}, Lcom/papa91/arc/widget/htmltext/NumberSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int/2addr v4, v5

    .line 66
    iget-object v5, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-le v5, v7, :cond_1d

    .line 67
    iget-object v5, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    sub-int/2addr v5, v7

    mul-int v5, v5, v3

    sub-int/2addr v4, v5

    .line 68
    :cond_1d
    new-instance v5, Lcom/papa91/arc/widget/htmltext/NumberSpan;

    iget-object v6, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-direct {v5, v4, v6}, Lcom/papa91/arc/widget/htmltext/NumberSpan;-><init>(II)V

    .line 69
    const-class v4, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Ol;

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v9, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 70
    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    sub-int/2addr v9, v8

    mul-int v3, v3, v9

    invoke-direct {v7, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v6, v3

    aput-object v5, v6, v8

    .line 71
    invoke-direct {v0, v2, v4, v3, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 72
    :cond_1e
    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v4, v17

    .line 73
    invoke-static {v2, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 74
    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 75
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v6

    .line 76
    instance-of v7, v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    if-eqz v7, :cond_1f

    check-cast v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;

    invoke-static {v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;->access$1000(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$A;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_1f
    move-object/from16 v7, v18

    .line 77
    :goto_8
    invoke-interface {v2, v5, v6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    iget-object v5, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 79
    new-instance v8, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;

    invoke-direct {v8, v0, v7, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$1;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v8, v6, v14

    invoke-direct {v0, v2, v4, v14, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_20
    const/4 v5, 0x1

    const/4 v14, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 80
    new-instance v8, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;

    invoke-direct {v8, v0, v7, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v14

    invoke-direct {v0, v2, v4, v14, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_21
    const/4 v5, 0x1

    const/4 v14, 0x0

    .line 81
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 82
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Code;

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string v7, "monospace"

    invoke-direct {v6, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v14

    invoke-direct {v0, v2, v3, v14, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 83
    :cond_22
    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 84
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Center;

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v6, v7}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    aput-object v6, v4, v14

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 85
    :cond_23
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_a

    .line 86
    :cond_24
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 87
    iget v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableTagLevel:I

    if-nez v3, :cond_27

    .line 88
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    iget-object v4, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    if-eqz v4, :cond_25

    .line 90
    invoke-virtual {v4}, Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;->newInstance()Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v3}, Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;->setTableHtml(Ljava/lang/String;)V

    goto :goto_9

    :cond_25
    move-object/from16 v4, v18

    .line 92
    :goto_9
    iget-object v3, v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    if-eqz v3, :cond_26

    .line 93
    invoke-virtual {v3}, Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;->newInstance()Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    move-result-object v3

    move-object/from16 v18, v3

    :cond_26
    new-array v3, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    move-object/from16 v4, v16

    .line 94
    invoke-direct {v0, v2, v4, v5, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_27
    move-object/from16 v4, v16

    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    .line 95
    invoke-direct {v0, v2, v4, v5, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_28
    const/4 v5, 0x0

    .line 96
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 97
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Tr;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 98
    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 99
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Th;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2a
    move-object/from16 v3, v21

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 101
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Td;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2b
    return v5

    :cond_2c
    :goto_a
    const/4 v5, 0x0

    .line 102
    const-class v3, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$Strike;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v7}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v7, v6, v5

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 103
    :goto_b
    invoke-direct/range {p0 .. p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->storeTableTags(ZLjava/lang/String;)V

    return v4
.end method

.method overrideTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_PLACEHOLDER></HTML_TEXTVIEW_ESCAPED_PLACEHOLDER>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<ul"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_UL_TAG"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</ul>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_UL_TAG>"

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<ol"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_OL_TAG"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</ol>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_OL_TAG>"

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<li"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_LI_TAG"

    .line 6
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</li>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_LI_TAG>"

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<a"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_A_TAG"

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</a>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_A_TAG>"

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    return-void
.end method

.method public setDrawTableLinkSpan(Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    return-void
.end method

.method public setListIndentPx(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->userGivenIndent:I

    return-void
.end method

.method public setOnClickATagListenerProvider(Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->onClickATagListenerProvider:Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    return-void
.end method
