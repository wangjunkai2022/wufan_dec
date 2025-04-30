.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# instance fields
.field attributes:Lorg/jsoup/nodes/Attributes;

.field private pendingAttributeName:Ljava/lang/String;

.field private pendingAttributeValue:Ljava/lang/StringBuilder;

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private final ensureAttributeValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method appendAttributeName(C)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    return-void
.end method

.method appendAttributeName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    return-void
.end method

.method appendAttributeValue(C)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method appendAttributeValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method appendAttributeValue([C)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 6
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method appendTagName(C)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method appendTagName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-void
.end method

.method finaliseTag()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_0
    return-void
.end method

.method getAttributes()Lorg/jsoup/nodes/Attributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method

.method isSelfClosing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object p0
.end method

.method newAttribute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lorg/jsoup/nodes/Attribute;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 7
    :goto_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method
