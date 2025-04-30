.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
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
.method anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "table"

    const-string v2, "tbody"

    const-string v3, "tfoot"

    const-string v4, "thead"

    const-string v5, "tr"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 4
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->newPendingTableCharacters()V

    .line 3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 4
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 5
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    return v4

    .line 8
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v3

    const-string v6, "table"

    if-eqz v3, :cond_e

    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v4

    const-string v7, "caption"

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 14
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 15
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 16
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 17
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_3
    const-string v7, "colgroup"

    .line 18
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 19
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 20
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 21
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_4
    const-string v8, "col"

    .line 22
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 23
    new-instance v3, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v3, v7}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 24
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_5
    const-string v7, "tbody"

    const-string v8, "tfoot"

    const-string v9, "thead"

    .line 25
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 26
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 27
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 28
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_6
    const-string v8, "td"

    const-string v9, "th"

    const-string v10, "tr"

    .line 29
    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 30
    new-instance v3, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v3, v7}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 31
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 32
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 33
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 34
    new-instance v3, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v3, v6}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 35
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_8
    const-string v6, "style"

    const-string v7, "script"

    .line 36
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 37
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1

    :cond_9
    const-string v6, "input"

    .line 38
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 39
    iget-object v4, v3, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hidden"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 40
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 41
    :cond_a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_b
    const-string v6, "form"

    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 43
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 44
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_c

    return v5

    .line 45
    :cond_c
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    goto :goto_0

    .line 47
    :cond_d
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 48
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 49
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 52
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 53
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    .line 54
    :cond_f
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()V

    goto :goto_0

    :cond_10
    const-string v7, "body"

    const-string v8, "caption"

    const-string v9, "col"

    const-string v10, "colgroup"

    const-string v11, "html"

    const-string v12, "tbody"

    const-string v13, "td"

    const-string v14, "tfoot"

    const-string v15, "th"

    const-string v16, "thead"

    const-string v17, "tr"

    .line 56
    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 57
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    .line 58
    :cond_11
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 59
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 60
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "html"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 61
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_13
    return v4

    .line 62
    :cond_14
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1
.end method
