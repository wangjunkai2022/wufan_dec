.class public Lcom/join/mgps/Util/HtmlDocUtil;
.super Ljava/lang/Object;
.source "HtmlDocUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/HtmlDocUtil$a;,
        Lcom/join/mgps/Util/HtmlDocUtil$d;,
        Lcom/join/mgps/Util/HtmlDocUtil$b;,
        Lcom/join/mgps/Util/HtmlDocUtil$c;,
        Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 3
    aget-char v1, p0, v0

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_0

    const/16 v1, 0x20

    .line 4
    aput-char v1, p0, v0

    goto :goto_1

    .line 5
    :cond_0
    aget-char v1, p0, v0

    const v2, 0xff00

    if-le v1, v2, :cond_1

    aget-char v1, p0, v0

    const v2, 0xff5f

    if-ge v1, v2, :cond_1

    .line 6
    aget-char v1, p0, v0

    const v2, 0xfee0

    sub-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, p0, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {p0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    const-string v2, "detail"

    .line 3
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->get(I)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 6
    new-instance v4, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    invoke-direct {v4}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    .line 7
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "p"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "#"

    const-string v9, "bsrc"

    const-string v10, "href"

    const-string v11, "a"

    const-string v12, "img"

    const-string v13, "src"

    const-string v14, "uurl"

    if-eqz v6, :cond_a

    .line 9
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 10
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 11
    new-instance v5, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    invoke-direct {v5}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    .line 12
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Node;

    .line 13
    instance-of v15, v6, Lorg/jsoup/nodes/TextNode;

    if-eqz v15, :cond_1

    .line 14
    check-cast v6, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v6}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 17
    invoke-virtual {v15}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->getType()Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    move-result-object v2

    sget-object v8, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    if-ne v2, v8, :cond_0

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v15}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/Util/HtmlDocUtil$c;

    invoke-virtual {v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<br/>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_3

    .line 20
    :cond_0
    sget-object v2, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 21
    new-instance v2, Lcom/join/mgps/Util/HtmlDocUtil$c;

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 22
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 23
    :cond_1
    instance-of v2, v6, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {v6}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v6, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 26
    sget-object v2, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Video:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 27
    new-instance v2, Lcom/join/mgps/Util/HtmlDocUtil$d;

    invoke-virtual {v6, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v8, v6}, Lcom/join/mgps/Util/HtmlDocUtil$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 28
    :cond_2
    sget-object v2, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Image:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 29
    new-instance v2, Lcom/join/mgps/Util/HtmlDocUtil$b;

    invoke-virtual {v6, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v8, v6}, Lcom/join/mgps/Util/HtmlDocUtil$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 30
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 31
    :cond_3
    invoke-virtual {v6}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "br"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->getType()Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    move-result-object v6

    sget-object v8, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    if-ne v6, v8, :cond_4

    if-eqz v4, :cond_4

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/Util/HtmlDocUtil$c;

    invoke-virtual {v5}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "\n"

    .line 36
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 37
    new-instance v6, Lcom/join/mgps/Util/HtmlDocUtil$c;

    invoke-direct {v6, v5}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v2, v6}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 38
    :cond_4
    sget-object v2, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 39
    new-instance v2, Lcom/join/mgps/Util/HtmlDocUtil$c;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v5, v2}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 40
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 41
    :cond_5
    invoke-virtual {v6}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 42
    invoke-virtual {v6, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v2, v7

    .line 44
    :cond_6
    check-cast v6, Lorg/jsoup/nodes/Element;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v6

    .line 45
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v6, Lcom/join/mgps/Util/HtmlDocUtil$a;

    invoke-direct {v6, v2}, Lcom/join/mgps/Util/HtmlDocUtil$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v2

    move-object/from16 v16, v1

    const/4 v1, 0x0

    const/16 v15, 0x11

    invoke-virtual {v8, v6, v1, v2, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->getType()Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    move-result-object v2

    sget-object v6, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    if-ne v2, v6, :cond_7

    if-eqz v4, :cond_7

    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 52
    :cond_7
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v5, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 53
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v5, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 54
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    :goto_3
    move-object/from16 v16, v1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v16

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v16, v1

    goto/16 :goto_7

    :cond_a
    move-object/from16 v16, v1

    .line 55
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 56
    invoke-virtual {v3, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 57
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Video:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 58
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$d;

    invoke-virtual {v3, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/Util/HtmlDocUtil$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    goto :goto_5

    .line 59
    :cond_b
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Image:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 60
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$b;

    invoke-virtual {v3, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/Util/HtmlDocUtil$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 61
    :goto_5
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 62
    :cond_c
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 63
    invoke-virtual {v3, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    move-object v7, v1

    .line 65
    :goto_6
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$a;

    invoke-direct {v1, v7}, Lcom/join/mgps/Util/HtmlDocUtil$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 68
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 69
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v1, v16

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "detail"

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method
