.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 6
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 10
    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v4, v1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7c

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_7b

    const-string v7, "applet"

    const-string v8, "html"

    const/4 v9, 0x3

    const-string v10, "name"

    const-string v11, "dt"

    const-string v12, "dd"

    const-string v13, "li"

    const-string v14, "form"

    const-string v15, "body"

    const-string v5, "p"

    if-eq v3, v9, :cond_32

    const/4 v9, 0x4

    if-eq v3, v9, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_17

    .line 2
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 5
    :cond_2
    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 7
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 9
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 10
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 14
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 15
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 16
    :cond_5
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 18
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_7
    const-string v18, "address"

    const-string v19, "article"

    const-string v20, "aside"

    const-string v21, "blockquote"

    const-string v22, "button"

    const-string v23, "center"

    const-string v24, "details"

    const-string v25, "dir"

    const-string v26, "div"

    const-string v27, "dl"

    const-string v28, "fieldset"

    const-string v29, "figcaption"

    const-string v30, "figure"

    const-string v31, "footer"

    const-string v32, "header"

    const-string v33, "hgroup"

    const-string v34, "listing"

    const-string v35, "menu"

    const-string v36, "nav"

    const-string v37, "ol"

    const-string v38, "pre"

    const-string v39, "section"

    const-string v40, "summary"

    const-string v41, "ul"

    .line 20
    filled-new-array/range {v18 .. v41}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 21
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 22
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 23
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 24
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 25
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 26
    :cond_9
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27
    :cond_a
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v14, 0x0

    if-eqz v8, :cond_e

    .line 28
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 29
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    if-eqz v1, :cond_d

    .line 30
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    .line 31
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 32
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 33
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 34
    :cond_c
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_0

    .line 35
    :cond_d
    :goto_1
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 36
    :cond_e
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 37
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 38
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 39
    new-instance v1, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v1, v9}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 40
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 41
    :cond_f
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 43
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 44
    :cond_10
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    :cond_11
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 46
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 47
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 48
    :cond_12
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 50
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 51
    :cond_13
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_14
    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 53
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 54
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 55
    :cond_15
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 57
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 58
    :cond_16
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v18, "h1"

    const-string v19, "h2"

    const-string v20, "h3"

    const-string v21, "h4"

    const-string v22, "h5"

    const-string v23, "h6"

    .line 59
    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v18, "h1"

    const-string v19, "h2"

    const-string v20, "h3"

    const-string v21, "h4"

    const-string v22, "h5"

    const-string v23, "h6"

    .line 60
    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 61
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 62
    :cond_18
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 64
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_19
    const-string v5, "h1"

    const-string v6, "h2"

    const-string v7, "h3"

    const-string v8, "h4"

    const-string v9, "h5"

    const-string v10, "h6"

    .line 65
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const-string v3, "sarcasm"

    .line 66
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 67
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    :cond_1b
    const-string v18, "a"

    const-string v19, "b"

    const-string v20, "big"

    const-string v21, "code"

    const-string v22, "em"

    const-string v23, "font"

    const-string v24, "i"

    const-string v25, "nobr"

    const-string v26, "s"

    const-string v27, "small"

    const-string v28, "strike"

    const-string v29, "strong"

    const-string v30, "tt"

    const-string v31, "u"

    .line 68
    filled-new-array/range {v18 .. v31}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 69
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-nez v5, :cond_1c

    .line 70
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 71
    :cond_1c
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 72
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 73
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v4

    .line 74
    :cond_1d
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 75
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 76
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v7

    if-eq v7, v5, :cond_1f

    .line 77
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 78
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v7

    move-object v11, v14

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 79
    :goto_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-ge v8, v12, :cond_22

    const/16 v12, 0x40

    if-ge v8, v12, :cond_22

    .line 80
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jsoup/nodes/Element;

    if-ne v12, v5, :cond_20

    add-int/lit8 v10, v8, -0x1

    .line 81
    invoke-virtual {v7, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lorg/jsoup/nodes/Element;

    const/4 v10, 0x1

    goto :goto_4

    :cond_20
    if-eqz v10, :cond_21

    .line 82
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v13

    if-eqz v13, :cond_21

    goto :goto_5

    :cond_21
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_22
    move-object v12, v14

    :goto_5
    if-nez v12, :cond_23

    .line 83
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v4

    :cond_23
    move-object v8, v12

    move-object v10, v8

    const/4 v7, 0x0

    const/4 v13, 0x3

    :goto_6
    if-ge v7, v13, :cond_28

    .line 85
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 86
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v8

    .line 87
    :cond_24
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-nez v15, :cond_25

    .line 88
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto :goto_7

    :cond_25
    if-ne v8, v5, :cond_26

    goto :goto_8

    .line 89
    :cond_26
    new-instance v15, Lorg/jsoup/nodes/Element;

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v13, v14}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, v8, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 91
    invoke-virtual {v2, v8, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 92
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 93
    invoke-virtual {v10}, Lorg/jsoup/nodes/Node;->remove()V

    .line 94
    :cond_27
    invoke-virtual {v15, v10}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object v8, v15

    move-object v10, v8

    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    goto :goto_6

    .line 95
    :cond_28
    :goto_8
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "table"

    const-string v13, "tbody"

    const-string v14, "tfoot"

    const-string v15, "thead"

    const-string v4, "tr"

    filled-new-array {v8, v13, v14, v15, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 96
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 97
    invoke-virtual {v10}, Lorg/jsoup/nodes/Node;->remove()V

    .line 98
    :cond_29
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    goto :goto_9

    .line 99
    :cond_2a
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 100
    invoke-virtual {v10}, Lorg/jsoup/nodes/Node;->remove()V

    .line 101
    :cond_2b
    invoke-virtual {v11, v10}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 102
    :goto_9
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-static {v9}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v8

    new-array v8, v8, [Lorg/jsoup/nodes/Node;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/jsoup/nodes/Node;

    .line 104
    array-length v8, v7

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v8, :cond_2c

    aget-object v11, v7, v10

    .line 105
    invoke-virtual {v4, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 106
    :cond_2c
    invoke-virtual {v12, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 107
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 108
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 109
    invoke-virtual {v2, v12, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_2d
    const-string v3, "marquee"

    const-string v4, "object"

    .line 110
    filled-new-array {v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 111
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 113
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 114
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 115
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 116
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 117
    :cond_2f
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_0

    :cond_30
    const-string v3, "br"

    .line 119
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 120
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 121
    new-instance v1, Lorg/jsoup/parser/Token$StartTag;

    const-string v3, "br"

    invoke-direct {v1, v3}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    return v6

    .line 122
    :cond_31
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 123
    :cond_32
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 126
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 128
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Attribute;

    .line 129
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 130
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_b

    :cond_34
    const-string v19, "base"

    const-string v20, "basefont"

    const-string v21, "bgsound"

    const-string v22, "command"

    const-string v23, "link"

    const-string v24, "meta"

    const-string v25, "noframes"

    const-string v26, "script"

    const-string v27, "style"

    const-string v28, "title"

    .line 131
    filled-new-array/range {v19 .. v28}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 132
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1

    .line 133
    :cond_35
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 134
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_38

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v7, 0x2

    if-le v4, v7, :cond_36

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_d

    .line 137
    :cond_36
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 138
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 139
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Attribute;

    .line 140
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 141
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_c

    :cond_38
    :goto_d
    return v6

    :cond_39
    const-string v1, "frameset"

    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 143
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3e

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v7, 0x2

    if-le v4, v7, :cond_3a

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_f

    .line 146
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v4

    if-nez v4, :cond_3b

    return v6

    .line 147
    :cond_3b
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 148
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 149
    invoke-virtual {v4}, Lorg/jsoup/nodes/Node;->remove()V

    .line 150
    :cond_3c
    :goto_e
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v5, :cond_3d

    .line 151
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_e

    .line 152
    :cond_3d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 153
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_3e
    :goto_f
    return v6

    :cond_3f
    const-string v19, "address"

    const-string v20, "article"

    const-string v21, "aside"

    const-string v22, "blockquote"

    const-string v23, "center"

    const-string v24, "details"

    const-string v25, "dir"

    const-string v26, "div"

    const-string v27, "dl"

    const-string v28, "fieldset"

    const-string v29, "figcaption"

    const-string v30, "figure"

    const-string v31, "footer"

    const-string v32, "header"

    const-string v33, "hgroup"

    const-string v34, "menu"

    const-string v35, "nav"

    const-string v36, "ol"

    const-string v37, "p"

    const-string v38, "section"

    const-string v39, "summary"

    const-string v40, "ul"

    .line 154
    filled-new-array/range {v19 .. v40}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 155
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 156
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 157
    :cond_40
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_41
    const-string v19, "h1"

    const-string v20, "h2"

    const-string v21, "h3"

    const-string v22, "h4"

    const-string v23, "h5"

    const-string v24, "h6"

    .line 158
    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 159
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 160
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 161
    :cond_42
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "h1"

    const-string v5, "h2"

    const-string v6, "h3"

    const-string v7, "h4"

    const-string v8, "h5"

    const-string v9, "h6"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 162
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 164
    :cond_43
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_44
    const-string v1, "pre"

    const-string v8, "listing"

    .line 165
    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 166
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 167
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 168
    :cond_45
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 169
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 170
    :cond_46
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 171
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 172
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 173
    :cond_47
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 174
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 175
    :cond_48
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 176
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    .line 177
    :cond_49
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 178
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_10
    if-lez v4, :cond_4c

    .line 181
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 182
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 183
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v13}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto :goto_11

    .line 184
    :cond_4a
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "address"

    const-string v8, "div"

    filled-new-array {v7, v8, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    goto :goto_11

    :cond_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 185
    :cond_4c
    :goto_11
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 186
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 187
    :cond_4d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 188
    :cond_4e
    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 189
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_12
    if-lez v4, :cond_51

    .line 192
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 193
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 194
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto :goto_13

    .line 195
    :cond_4f
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "address"

    const-string v8, "div"

    filled-new-array {v7, v8, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    goto :goto_13

    :cond_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    .line 196
    :cond_51
    :goto_13
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 197
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 198
    :cond_52
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_53
    const-string v1, "plaintext"

    .line 199
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 200
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 201
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 202
    :cond_54
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 203
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_0

    :cond_55
    const-string v1, "button"

    .line 204
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 205
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 206
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 207
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 208
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_0

    .line 209
    :cond_56
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 210
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 211
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_57
    const-string v1, "a"

    .line 212
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 213
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 214
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 215
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 216
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 217
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 218
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 219
    :cond_58
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 220
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 221
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    :cond_59
    const-string v19, "b"

    const-string v20, "big"

    const-string v21, "code"

    const-string v22, "em"

    const-string v23, "font"

    const-string v24, "i"

    const-string v25, "s"

    const-string v26, "small"

    const-string v27, "strike"

    const-string v28, "strong"

    const-string v29, "tt"

    const-string v30, "u"

    .line 222
    filled-new-array/range {v19 .. v30}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 223
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 224
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 225
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    :cond_5a
    const-string v1, "nobr"

    .line 226
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 227
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 228
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 229
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 230
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 231
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 232
    :cond_5b
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 233
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    :cond_5c
    const-string v1, "marquee"

    const-string v8, "object"

    .line 234
    filled-new-array {v7, v1, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 235
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 236
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 237
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 238
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_5d
    const-string v1, "table"

    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 240
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v1

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v1, v4, :cond_5e

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 241
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 242
    :cond_5e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 243
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 244
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_5f
    const-string v19, "area"

    const-string v20, "br"

    const-string v21, "embed"

    const-string v22, "img"

    const-string v23, "keygen"

    const-string v24, "wbr"

    .line 245
    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 246
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 247
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 248
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_60
    const-string v1, "input"

    .line 249
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 250
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 251
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v3, "type"

    .line 252
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_61
    const-string v1, "param"

    const-string v7, "source"

    const-string v8, "track"

    .line 254
    filled-new-array {v1, v7, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 255
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_62
    const-string v1, "hr"

    .line 256
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 257
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 258
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 259
    :cond_63
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 260
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_64
    const-string v7, "image"

    .line 261
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    const-string v1, "img"

    .line 262
    invoke-virtual {v3, v1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    .line 263
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_65
    const-string v7, "isindex"

    .line 264
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 265
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_66

    return v6

    .line 267
    :cond_66
    iget-object v4, v2, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v4}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 268
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v4, v14}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 269
    iget-object v4, v3, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 270
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 271
    iget-object v6, v3, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v6, v5}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 272
    :cond_67
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v4, v1}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 273
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    const-string v6, "label"

    invoke-direct {v4, v6}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 274
    iget-object v4, v3, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v6, "prompt"

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, v3, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_68
    const-string v4, "This is a searchable index. Enter search keywords: "

    .line 275
    :goto_14
    new-instance v7, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v7, v4}, Lorg/jsoup/parser/Token$Character;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 276
    new-instance v4, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v4}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 277
    iget-object v3, v3, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_69
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Attribute;

    .line 278
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v10, v5, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_69

    .line 279
    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_15

    :cond_6a
    const-string v3, "isindex"

    .line 280
    invoke-virtual {v4, v10, v3}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v3, Lorg/jsoup/parser/Token$StartTag;

    const-string v5, "input"

    invoke-direct {v3, v5, v4}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 282
    new-instance v3, Lorg/jsoup/parser/Token$EndTag;

    const-string v4, "label"

    invoke-direct {v3, v4}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 283
    new-instance v3, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v3, v1}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 284
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v14}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_0

    :cond_6b
    const-string v1, "textarea"

    .line 285
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 286
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 287
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 289
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 290
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_6c
    const-string v1, "xmp"

    .line 291
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 292
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 293
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 294
    :cond_6d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 295
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 296
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_6e
    const-string v1, "iframe"

    .line 297
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 298
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 299
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_6f
    const-string v1, "noembed"

    .line 300
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 301
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_70
    const-string v1, "select"

    .line 302
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 303
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 304
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 305
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v1

    .line 307
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_16

    .line 308
    :cond_71
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 309
    :cond_72
    :goto_16
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_73
    const-string v1, "option"

    .line 310
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "optgroup"

    invoke-static {v7, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 311
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 312
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 313
    :cond_74
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 314
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_75
    const-string v1, "rt"

    .line 315
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "rp"

    invoke-static {v5, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "ruby"

    .line 316
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 318
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 319
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 320
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 321
    :cond_76
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_77
    const-string v1, "math"

    .line 322
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 323
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 324
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 325
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    :cond_78
    const-string v1, "svg"

    .line 326
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 327
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 328
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 329
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    :cond_79
    const-string v7, "caption"

    const-string v8, "col"

    const-string v9, "colgroup"

    const-string v10, "frame"

    const-string v11, "head"

    const-string v12, "tbody"

    const-string v13, "td"

    const-string v14, "tfoot"

    const-string v15, "th"

    const-string v16, "thead"

    const-string v17, "tr"

    .line 330
    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 331
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 332
    :cond_7a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 333
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 334
    :cond_7b
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 335
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto/16 :goto_0

    :goto_17
    return v1
.end method
