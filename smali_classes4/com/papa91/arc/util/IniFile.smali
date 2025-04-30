.class public Lcom/papa91/arc/util/IniFile;
.super Ljava/lang/Object;
.source "IniFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/util/IniFile$Section;
    }
.end annotation


# instance fields
.field private charSet:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private line_separator:Ljava/lang/String;

.field private sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/papa91/arc/util/IniFile$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/papa91/arc/util/IniFile;->line_separator:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 3
    iput-object v1, p0, Lcom/papa91/arc/util/IniFile;->charSet:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    .line 5
    iput-object v0, p0, Lcom/papa91/arc/util/IniFile;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/papa91/arc/util/IniFile;->line_separator:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 8
    iput-object v1, p0, Lcom/papa91/arc/util/IniFile;->charSet:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    .line 10
    iput-object v0, p0, Lcom/papa91/arc/util/IniFile;->file:Ljava/io/File;

    .line 11
    iput-object p1, p0, Lcom/papa91/arc/util/IniFile;->file:Ljava/io/File;

    .line 12
    invoke-direct {p0, p1}, Lcom/papa91/arc/util/IniFile;->initFromFile(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/papa91/arc/util/IniFile;->line_separator:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 15
    iput-object v1, p0, Lcom/papa91/arc/util/IniFile;->charSet:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    .line 17
    iput-object v0, p0, Lcom/papa91/arc/util/IniFile;->file:Ljava/io/File;

    .line 18
    invoke-direct {p0, p1}, Lcom/papa91/arc/util/IniFile;->initFromInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method private initFromFile(Ljava/io/File;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/papa91/arc/util/IniFile;->toIniFile(Ljava/io/BufferedReader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initFromInputStream(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/papa91/arc/util/IniFile;->charSet:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/papa91/arc/util/IniFile;->toIniFile(Ljava/io/BufferedReader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveConfig(Ljava/io/BufferedWriter;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/papa91/arc/util/IniFile;->line_separator:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/util/IniFile$Section;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa91/arc/util/IniFile$Section;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/papa91/arc/util/IniFile;->line_separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 6
    :goto_0
    invoke-virtual {v2}, Lcom/papa91/arc/util/IniFile$Section;->getValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "="

    .line 8
    invoke-virtual {p1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 10
    iget-object v3, p0, Lcom/papa91/arc/util/IniFile;->line_separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private toIniFile(Ljava/io/BufferedReader;)V
    .locals 6

    const-string v0, "^\\[.*\\]$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/papa91/arc/util/IniFile$Section;

    invoke-direct {v2, p0}, Lcom/papa91/arc/util/IniFile$Section;-><init>(Lcom/papa91/arc/util/IniFile;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/papa91/arc/util/IniFile$Section;->access$002(Lcom/papa91/arc/util/IniFile$Section;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-static {v2}, Lcom/papa91/arc/util/IniFile$Section;->access$000(Lcom/papa91/arc/util/IniFile$Section;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v3, "="

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 9
    array-length v3, v2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    .line 10
    aget-object v3, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/papa91/arc/util/IniFile$Section;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/papa91/arc/util/IniFile$Section;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/util/IniFile$Section;

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa91/arc/util/IniFile;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/util/IniFile$Section;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, p2}, Lcom/papa91/arc/util/IniFile$Section;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object p3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public load(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/util/IniFile;->file:Ljava/io/File;

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/arc/util/IniFile;->initFromFile(Ljava/io/File;)V

    return-void
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/papa91/arc/util/IniFile;->initFromInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/util/IniFile$Section;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/util/IniFile$Section;->getValues()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public save()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/papa91/arc/util/IniFile;->save(Ljava/io/File;)V

    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/papa91/arc/util/IniFile;->saveConfig(Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/papa91/arc/util/IniFile;->charSet:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/papa91/arc/util/IniFile;->saveConfig(Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/util/IniFile$Section;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/util/IniFile$Section;

    invoke-direct {v0, p0}, Lcom/papa91/arc/util/IniFile$Section;-><init>(Lcom/papa91/arc/util/IniFile;)V

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lcom/papa91/arc/util/IniFile$Section;->access$002(Lcom/papa91/arc/util/IniFile$Section;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p2, p3}, Lcom/papa91/arc/util/IniFile$Section;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/papa91/arc/util/IniFile;->sections:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/util/IniFile;->charSet:Ljava/lang/String;

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/util/IniFile;->line_separator:Ljava/lang/String;

    return-void
.end method
