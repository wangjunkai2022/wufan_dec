.class public Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;
.super Ljava/lang/Object;
.source "WrapperContentHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Landroid/text/Html$TagHandler;


# instance fields
.field private mContentHandler:Lorg/xml/sax/ContentHandler;

.field private mSpannableStringBuilder:Landroid/text/Editable;

.field private mTagHandler:Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mTagHandler:Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mTagHandler:Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;

    iget-object v1, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mSpannableStringBuilder:Landroid/text/Editable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, p2, v1, v3}, Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez p1, :cond_0

    .line 2
    iput-object p3, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mSpannableStringBuilder:Landroid/text/Editable;

    .line 3
    invoke-interface {p4}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    .line 4
    invoke-interface {p4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mTagHandler:Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;

    iget-object v1, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mSpannableStringBuilder:Landroid/text/Editable;

    const/4 v2, 0x1

    invoke-interface {v0, v2, p2, v1, p4}, Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
