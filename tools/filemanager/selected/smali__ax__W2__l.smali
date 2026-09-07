.class public Lax/W2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lax/W2/l$a;,
        Lax/W2/l$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lax/W2/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lax/f3/K;

.field private d:Lax/W2/l$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lax/f3/K;Lax/W2/l$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lax/W2/l;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p2, p0, Lax/W2/l;->c:Lax/f3/K;

    .line 12
    .line 13
    iput-object p1, p0, Lax/W2/l;->b:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p3, p0, Lax/W2/l;->d:Lax/W2/l$a;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
.end method

.method private static c(Landroid/content/Context;Lax/f3/K;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lax/U2/e;->q(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "duplicate_hash_"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lax/U2/f;->H()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "#"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lax/f3/K;->b()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    new-instance v0, Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 55
    .line 56
    const-string p1, "cannot get index file"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method

.method private static d(Landroid/content/Context;Lax/f3/K;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lax/U2/e;->q(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "duplicate_hash_"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lax/U2/f;->H()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ":"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lax/f3/K;->b()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    new-instance v0, Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 55
    .line 56
    const-string p1, "cannot get index file"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method

.method private f(Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    const-string v0, "\u0000"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v0, p1, v0

    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v0, 0x1

    .line 15
    aget-object v0, p1, v0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const/4 v0, 0x2

    .line 22
    aget-object v0, p1, v0

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    const/4 v0, 0x3

    .line 29
    aget-object v7, p1, v0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    aget-object v8, p1, v0

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    aget-object v9, p1, v0

    .line 36
    .line 37
    new-instance v1, Lax/W2/l$b;

    .line 38
    .line 39
    invoke-direct/range {v1 .. v9}, Lax/W2/l$b;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lax/W2/l;->a:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    move-object p1, v0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method private i(Ljava/io/BufferedWriter;Lax/W2/l$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p2, Lax/W2/l$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, "\u0000"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p2, Lax/W2/l$b;->b:J

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    iget-wide v2, p2, Lax/W2/l$b;->c:J

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    iget-object v2, p2, Lax/W2/l$b;->d:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    iget-object v2, p2, Lax/W2/l$b;->e:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    iget-object p2, p2, Lax/W2/l$b;->f:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    const-string p2, "#"

    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    const-string p2, "\n"

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method


# virtual methods
.method public a(Lcom/alphainventor/filemanager/file/A;Lcom/alphainventor/filemanager/file/A;Lax/z3/c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/A;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ".folderimage"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_16

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/A;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lax/W2/l;->b(Lcom/alphainventor/filemanager/file/A;)Lax/W2/l$b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p2}, Lax/W2/l;->b(Lcom/alphainventor/filemanager/file/A;)Lax/W2/l$b;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    invoke-interface {p3}, Lax/z3/c;->isCancelled()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Lax/e3/a;

    .line 44
    .line 45
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    :goto_0
    if-eqz p1, :cond_16

    .line 50
    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_3
    iget-object v0, p1, Lax/W2/l$b;->d:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v0, :cond_16

    .line 58
    .line 59
    iget-object v1, p2, Lax/W2/l$b;->d:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    return v2

    .line 72
    :cond_5
    if-eqz p3, :cond_7

    .line 73
    .line 74
    invoke-interface {p3}, Lax/z3/c;->isCancelled()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    new-instance p1, Lax/e3/a;

    .line 82
    .line 83
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_7
    :goto_1
    iget-object v0, p1, Lax/W2/l$b;->e:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v1, 0x2

    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0, p1, v1}, Lax/W2/l;->h(Lax/W2/l$b;I)V

    .line 97
    .line 98
    .line 99
    :cond_8
    if-eqz p3, :cond_a

    .line 100
    .line 101
    invoke-interface {p3}, Lax/z3/c;->isCancelled()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_9

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_9
    new-instance p1, Lax/e3/a;

    .line 109
    .line 110
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_a
    :goto_2
    iget-object v0, p2, Lax/W2/l$b;->e:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_b

    .line 121
    .line 122
    invoke-virtual {p0, p2, v1}, Lax/W2/l;->h(Lax/W2/l$b;I)V

    .line 123
    .line 124
    .line 125
    :cond_b
    iget-object v0, p1, Lax/W2/l$b;->e:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v0, :cond_16

    .line 128
    .line 129
    iget-object v1, p2, Lax/W2/l$b;->e:Ljava/lang/String;

    .line 130
    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_d

    .line 139
    .line 140
    return v2

    .line 141
    :cond_d
    iget-wide v0, p1, Lax/W2/l$b;->c:J

    .line 142
    .line 143
    iget-wide v3, p2, Lax/W2/l$b;->c:J

    .line 144
    .line 145
    cmp-long v5, v0, v3

    .line 146
    .line 147
    if-nez v5, :cond_e

    .line 148
    .line 149
    const/4 p1, 0x1

    .line 150
    return p1

    .line 151
    :cond_e
    if-eqz p3, :cond_10

    .line 152
    .line 153
    invoke-interface {p3}, Lax/z3/c;->isCancelled()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_f

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_f
    new-instance p1, Lax/e3/a;

    .line 161
    .line 162
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_10
    :goto_3
    iget-object v0, p1, Lax/W2/l$b;->f:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const/4 v1, 0x3

    .line 173
    if-eqz v0, :cond_11

    .line 174
    .line 175
    invoke-virtual {p0, p1, v1}, Lax/W2/l;->h(Lax/W2/l$b;I)V

    .line 176
    .line 177
    .line 178
    :cond_11
    if-eqz p3, :cond_13

    .line 179
    .line 180
    invoke-interface {p3}, Lax/z3/c;->isCancelled()Z

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    if-nez p3, :cond_12

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_12
    new-instance p1, Lax/e3/a;

    .line 188
    .line 189
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_13
    :goto_4
    iget-object p3, p2, Lax/W2/l$b;->f:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    if-eqz p3, :cond_14

    .line 200
    .line 201
    invoke-virtual {p0, p2, v1}, Lax/W2/l;->h(Lax/W2/l$b;I)V

    .line 202
    .line 203
    .line 204
    :cond_14
    iget-object p1, p1, Lax/W2/l$b;->f:Ljava/lang/String;

    .line 205
    .line 206
    if-eqz p1, :cond_16

    .line 207
    .line 208
    iget-object p2, p2, Lax/W2/l$b;->f:Ljava/lang/String;

    .line 209
    .line 210
    if-nez p2, :cond_15

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    return p1

    .line 218
    :cond_16
    :goto_5
    return v2
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
.end method

.method public b(Lcom/alphainventor/filemanager/file/A;)Lax/W2/l$b;
    .locals 14

    .line 1
    iget-object v0, p0, Lax/W2/l;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/alphainventor/filemanager/file/A;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lax/W2/l$b;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v2, p1, Lcom/alphainventor/filemanager/file/A;->c:J

    .line 15
    .line 16
    iget-wide v4, v0, Lax/W2/l$b;->c:J

    .line 17
    .line 18
    cmp-long v6, v2, v4

    .line 19
    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    iget-wide v2, p1, Lcom/alphainventor/filemanager/file/A;->d:J

    .line 23
    .line 24
    iget-wide v4, v0, Lax/W2/l$b;->b:J

    .line 25
    .line 26
    cmp-long v6, v2, v4

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    iput-boolean v1, v0, Lax/W2/l$b;->g:Z

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lax/W2/l;->a:Ljava/util/HashMap;

    .line 34
    .line 35
    iget-object v2, p1, Lcom/alphainventor/filemanager/file/A;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v2, p1, Lcom/alphainventor/filemanager/file/A;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2}, Lax/f3/x;->g(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/o;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p1, Lcom/alphainventor/filemanager/file/A;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4, v5}, Lcom/alphainventor/filemanager/file/o;->h1(Lcom/alphainventor/filemanager/file/n;J)Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-wide/16 v3, 0x2000

    .line 60
    .line 61
    invoke-static {v2, v3, v4, v0}, Lax/z3/d;->b(Ljava/io/InputStream;JLax/z3/c;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    new-instance v5, Lax/W2/l$b;

    .line 66
    .line 67
    iget-object v6, p1, Lcom/alphainventor/filemanager/file/A;->a:Ljava/lang/String;

    .line 68
    .line 69
    iget-wide v7, p1, Lcom/alphainventor/filemanager/file/A;->d:J

    .line 70
    .line 71
    iget-wide v9, p1, Lcom/alphainventor/filemanager/file/A;->c:J

    .line 72
    .line 73
    const/4 v12, 0x0

    .line 74
    const/4 v13, 0x0

    .line 75
    invoke-direct/range {v5 .. v13}, Lax/W2/l$b;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v1, v5, Lax/W2/l$b;->g:Z

    .line 79
    .line 80
    iget-object p1, p0, Lax/W2/l;->a:Ljava/util/HashMap;

    .line 81
    .line 82
    iget-object v1, v5, Lax/W2/l$b;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    return-object v5

    .line 88
    :catch_0
    return-object v0
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
.end method

.method public e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lax/W2/l;->b:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v2, p0, Lax/W2/l;->c:Lax/f3/K;

    .line 5
    .line 6
    invoke-static {v1, v2}, Lax/W2/l;->d(Landroid/content/Context;Lax/f3/K;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lax/W2/l;->b:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v3, p0, Lax/W2/l;->c:Lax/f3/K;

    .line 13
    .line 14
    invoke-static {v2, v3}, Lax/W2/l;->c(Landroid/content/Context;Lax/f3/K;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lax/W2/l;->b:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Lax/W2/l;->c:Lax/f3/K;

    .line 36
    .line 37
    invoke-static {v1, v2}, Lax/W2/l;->c(Landroid/content/Context;Lax/f3/K;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_4

    .line 44
    :catch_0
    move-exception v1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    new-instance v1, Ljava/io/BufferedReader;

    .line 57
    .line 58
    new-instance v3, Ljava/io/FileReader;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v3, "1"

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    move-object v4, v1

    .line 90
    move-object v1, v0

    .line 91
    move-object v0, v4

    .line 92
    goto :goto_4

    .line 93
    :catch_1
    move-exception v0

    .line 94
    move-object v4, v1

    .line 95
    move-object v1, v0

    .line 96
    move-object v0, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-direct {p0, v0}, Lax/W2/l;->f(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-static {v1}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-static {v0}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_3
    return-void

    .line 121
    :goto_4
    if-eqz v0, :cond_6

    .line 122
    .line 123
    invoke-static {v0}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    throw v1
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
.end method

.method public g()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lax/W2/l;->b:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v2, p0, Lax/W2/l;->c:Lax/f3/K;

    .line 5
    .line 6
    invoke-static {v1, v2}, Lax/W2/l;->c(Landroid/content/Context;Lax/f3/K;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/io/BufferedWriter;

    .line 11
    .line 12
    new-instance v3, Ljava/io/FileWriter;

    .line 13
    .line 14
    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    const-string v0, "1\n"

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lax/W2/l;->a:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lax/W2/l$b;

    .line 46
    .line 47
    iget-boolean v3, v1, Lax/W2/l$b;->g:Z

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-direct {p0, v2, v1}, Lax/W2/l;->i(Ljava/io/BufferedWriter;Lax/W2/l$b;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    nop

    .line 56
    move-object v0, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_1
    nop

    .line 63
    :goto_1
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-static {v0}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method h(Lax/W2/l$b;I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p1, Lax/W2/l$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lax/f3/x;->g(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lax/W2/l$b;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/alphainventor/filemanager/file/o;->h1(Lcom/alphainventor/filemanager/file/n;J)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-ne p2, v2, :cond_0

    .line 22
    .line 23
    const-wide/32 v1, 0x100000

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Lax/z3/d;->b(Ljava/io/InputStream;JLax/z3/c;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p1, Lax/W2/l$b;->e:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x3

    .line 34
    if-ne p2, v2, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Lax/W2/l;->d:Lax/W2/l$a;

    .line 37
    .line 38
    iget-object v2, p1, Lax/W2/l$b;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p2, v2}, Lax/W2/l$a;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lax/f3/b;->p()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-static {v0, v1, v2, v3}, Lax/z3/d;->b(Ljava/io/InputStream;JLax/z3/c;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p1, Lax/W2/l$b;->f:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p2, p0, Lax/W2/l;->d:Lax/W2/l$a;

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    invoke-interface {p2, v0}, Lax/W2/l$a;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    iget-object p2, p0, Lax/W2/l;->a:Ljava/util/HashMap;

    .line 61
    .line 62
    iget-object v0, p1, Lax/W2/l$b;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    return-void
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method
