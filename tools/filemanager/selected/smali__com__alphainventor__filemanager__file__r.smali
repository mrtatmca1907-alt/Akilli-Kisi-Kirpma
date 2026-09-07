.class public Lcom/alphainventor/filemanager/file/r;
.super Lcom/alphainventor/filemanager/file/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alphainventor/filemanager/file/r$c;,
        Lcom/alphainventor/filemanager/file/r$e;,
        Lcom/alphainventor/filemanager/file/r$d;,
        Lcom/alphainventor/filemanager/file/r$f;
    }
.end annotation


# static fields
.field private static final n:Ljava/util/logging/Logger;

.field private static o:Lcom/alphainventor/filemanager/file/r$c;


# instance fields
.field private h:Lax/V7/a;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/alphainventor/filemanager/file/r$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "FileManager.GoogleDriveFileHelper"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/alphainventor/filemanager/file/r;->n:Ljava/util/logging/Logger;

    .line 8
    .line 9
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alphainventor/filemanager/file/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
.end method

.method static synthetic S(Lcom/alphainventor/filemanager/file/r;)Lax/V7/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic T(Lcom/alphainventor/filemanager/file/r;Lax/V7/a;)Lax/V7/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
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
.end method

.method static synthetic U(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alphainventor/filemanager/file/r;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
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
.end method

.method static synthetic V()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/alphainventor/filemanager/file/r;->n:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method static synthetic W(Lcom/alphainventor/filemanager/file/r;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alphainventor/filemanager/file/r;->j:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
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
.end method

.method private X()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alphainventor/filemanager/file/r$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lax/V7/a$c;->e()Lax/V7/a$c$d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "nextPageToken, files(id,name,parents)"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lax/V7/a$c$d;->J(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "trashed = false and mimeType = \'application/vnd.google-apps.folder\'"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lax/V7/a$c$d;->L(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lax/W7/d;

    .line 33
    .line 34
    invoke-virtual {v2}, Lax/W7/d;->o()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_6

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lax/W7/c;

    .line 53
    .line 54
    invoke-virtual {v4}, Lax/W7/c;->v()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const/4 v7, 0x1

    .line 72
    const/4 v8, 0x0

    .line 73
    if-ne v6, v7, :cond_2

    .line 74
    .line 75
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catch_0
    move-exception v2

    .line 83
    goto :goto_4

    .line 84
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v7, "parent:"

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6}, Lax/z3/b;->g(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/lang/String;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    const-string v5, "no-parent-id"

    .line 116
    .line 117
    :goto_2
    if-eqz v5, :cond_5

    .line 118
    .line 119
    invoke-virtual {v4}, Lax/W7/c;->r()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-nez v6, :cond_4

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    new-instance v6, Lcom/alphainventor/filemanager/file/r$d;

    .line 127
    .line 128
    invoke-direct {v6, v4, v5}, Lcom/alphainventor/filemanager/file/r$d;-><init>(Lax/W7/c;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    :goto_3
    invoke-static {}, Lax/z3/b;->f()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    invoke-virtual {v2}, Lax/W7/d;->q()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Lax/V7/a$c$d;->K(Ljava/lang/String;)Lax/V7/a$c$d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    invoke-virtual {v1, v2}, Lax/V7/a$c$d;->K(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 152
    .line 153
    .line 154
    :goto_5
    invoke-virtual {v1}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    invoke-virtual {v1}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-gtz v2, :cond_0

    .line 169
    .line 170
    :cond_7
    return-object v0
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

.method private Y(Lax/f3/E;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lax/f3/E;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method private a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;
    .locals 4

    .line 1
    instance-of v0, p2, Lax/L7/b;

    .line 2
    .line 3
    const/16 v1, 0x194

    .line 4
    .line 5
    const/16 v2, 0x193

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    move-object v0, p2

    .line 10
    check-cast v0, Lax/L7/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lax/P7/t;->b()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ne v3, v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Lax/L7/b;->e()Lax/L7/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-virtual {v0}, Lax/L7/b;->e()Lax/L7/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lax/L7/a;->o()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_8

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_8

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lax/L7/a$a;

    .line 49
    .line 50
    invoke-virtual {v1}, Lax/L7/a$a;->o()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "quotaExceeded"

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    const-string v2, "storageQuotaExceeded"

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v2, "forbidden"

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    const-string v2, "insufficientPermissions"

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    const-string v2, "insufficientParentPermissions"

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    .line 95
    :cond_2
    new-instance p1, Lax/e3/e;

    .line 96
    .line 97
    invoke-direct {p1, p2}, Lax/e3/e;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_3
    :goto_0
    new-instance p1, Lax/e3/s;

    .line 102
    .line 103
    invoke-direct {p1, p2}, Lax/e3/s;-><init>(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :cond_4
    if-ne v3, v1, :cond_8

    .line 108
    .line 109
    invoke-virtual {v0}, Lax/L7/b;->e()Lax/L7/a;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    invoke-virtual {v0}, Lax/L7/b;->e()Lax/L7/a;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lax/L7/a;->o()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lax/L7/a$a;

    .line 140
    .line 141
    invoke-virtual {v1}, Lax/L7/a$a;->o()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "notFound"

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    new-instance p1, Lax/e3/t;

    .line 154
    .line 155
    invoke-direct {p1, p2}, Lax/e3/t;-><init>(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    return-object p1

    .line 159
    :cond_6
    instance-of v0, p2, Lax/P7/t;

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    move-object v0, p2

    .line 164
    check-cast v0, Lax/P7/t;

    .line 165
    .line 166
    invoke-virtual {v0}, Lax/P7/t;->c()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v0}, Lax/P7/t;->b()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-ne v0, v2, :cond_7

    .line 175
    .line 176
    const-string v2, "Forbidden"

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_7

    .line 183
    .line 184
    new-instance p1, Lax/e3/e;

    .line 185
    .line 186
    invoke-direct {p1, p2}, Lax/e3/e;-><init>(Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    return-object p1

    .line 190
    :cond_7
    if-ne v0, v1, :cond_8

    .line 191
    .line 192
    const-string v0, "Not Found"

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    new-instance p1, Lax/e3/t;

    .line 201
    .line 202
    invoke-direct {p1, p2}, Lax/e3/t;-><init>(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    return-object p1

    .line 206
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v1, "NetworkError"

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    new-instance p1, Lax/e3/q;

    .line 225
    .line 226
    invoke-direct {p1, p2}, Lax/e3/q;-><init>(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    return-object p1

    .line 230
    :cond_9
    invoke-static {p1, p2}, Lax/e3/d;->b(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    return-object p1
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
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
.end method

.method private b0()Lax/f3/E;
    .locals 3

    .line 1
    new-instance v0, Lax/f3/E;

    .line 2
    .line 3
    const-string v1, "/.hidden-system-folder"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, p0, v1, v2, v2}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;ZZ)V

    .line 7
    .line 8
    .line 9
    return-object v0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method private c0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "\\\'"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private d0()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alphainventor/filemanager/file/m;->p()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "GoogleDrivePrefs"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/alphainventor/filemanager/file/m;->t()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "account_name_"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
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
.end method

.method private e0(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alphainventor/filemanager/file/r$d;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Stack;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-lez p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    :cond_1
    :goto_0
    if-ge v3, v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    check-cast v4, Lcom/alphainventor/filemanager/file/r$d;

    .line 43
    .line 44
    iget-object v5, v4, Lcom/alphainventor/filemanager/file/r$d;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    iget-object v5, v4, Lcom/alphainventor/filemanager/file/r$d;->a:Lax/W7/c;

    .line 53
    .line 54
    invoke-virtual {v5}, Lax/W7/c;->r()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v4, v4, Lcom/alphainventor/filemanager/file/r$d;->a:Lax/W7/c;

    .line 62
    .line 63
    invoke-virtual {v4}, Lax/W7/c;->r()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-object v1
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

.method private g0(Lax/f3/E;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lax/f3/E;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lax/f3/E;->h0()Lax/W7/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lax/W7/c;->w()Lax/W7/c$f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lax/W7/c;->w()Lax/W7/c$f;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lax/W7/c$f;->o()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lax/f3/E;->u()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    return-object v0
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
.end method

.method private h0(Lax/W7/c;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lax/W7/c;->v()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "root"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lax/W7/c;->v()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lax/W7/c;->v()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->m0(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    return-object p1

    .line 38
    :cond_1
    return-object v1
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
.end method

.method public static i0(Landroid/content/Context;)Lcom/alphainventor/filemanager/file/r$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/alphainventor/filemanager/file/r;->o:Lcom/alphainventor/filemanager/file/r$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/alphainventor/filemanager/file/r$c;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/alphainventor/filemanager/file/r$c;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/alphainventor/filemanager/file/r;->o:Lcom/alphainventor/filemanager/file/r$c;

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lcom/alphainventor/filemanager/file/r;->o:Lcom/alphainventor/filemanager/file/r$c;

    .line 17
    .line 18
    return-object p0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private j0(Lcom/alphainventor/filemanager/file/n;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lax/f3/E;

    .line 3
    .line 4
    invoke-virtual {v0}, Lax/f3/E;->i0()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/alphainventor/filemanager/file/r;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lax/f3/E;

    .line 19
    .line 20
    invoke-virtual {p1}, Lax/f3/E;->o()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-direct {p0, v0}, Lcom/alphainventor/filemanager/file/r;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
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
.end method

.method private k0(Lax/W7/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lax/f3/E;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lax/W7/c;->v()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lax/W7/c;->v()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lax/W7/c;->v()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->m0(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance p1, Lax/f3/E;

    .line 35
    .line 36
    const-string p2, "/"

    .line 37
    .line 38
    invoke-direct {p1, p0, p2}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_0
    if-eqz p4, :cond_1

    .line 43
    .line 44
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    move-object p1, p2

    .line 51
    move-object v0, p3

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 60
    .line 61
    :goto_0
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lax/f3/E;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 81
    .line 82
    invoke-virtual {v0}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lax/V7/a$c;->d(Ljava/lang/String;)Lax/V7/a$c$c;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "kind,id,name,mimeType,parents,capabilities/canDownload,capabilities/canEdit,size,modifiedTime,createdTime,webContentLink,thumbnailLink,webViewLink,shortcutDetails,trashed"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lax/V7/a$c$c;->I(Ljava/lang/String;)Lax/V7/a$c$c;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    move-object v4, p1

    .line 101
    check-cast v4, Lax/W7/c;

    .line 102
    .line 103
    invoke-direct {p0, v4, p2, p3, p4}, Lcom/alphainventor/filemanager/file/r;->k0(Lax/W7/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lax/f3/E;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {v4}, Lcom/alphainventor/filemanager/file/r;->r0(Lax/W7/c;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-static {p2, p3}, Lax/f3/d0;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    new-instance v0, Lax/f3/E;

    .line 120
    .line 121
    invoke-virtual {p1}, Lax/f3/E;->u()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    move-object v1, p0

    .line 130
    invoke-direct/range {v0 .. v5}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;Ljava/lang/String;Lax/W7/c;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, v1, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 134
    .line 135
    invoke-virtual {p1, v5, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget-object p1, v1, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 139
    .line 140
    invoke-virtual {v0}, Lax/f3/E;->u()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-virtual {p1, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_3
    move-object v1, p0

    .line 153
    invoke-direct {p0}, Lcom/alphainventor/filemanager/file/r;->b0()Lax/f3/E;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
.end method

.method private l0(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alphainventor/filemanager/file/r$d;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-eqz p2, :cond_7

    .line 7
    .line 8
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3, v1, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_1
    const-string v3, "/"

    .line 25
    .line 26
    if-ge v2, v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    check-cast v4, Lcom/alphainventor/filemanager/file/r$d;

    .line 35
    .line 36
    iget-object v5, v4, Lcom/alphainventor/filemanager/file/r$d;->a:Lax/W7/c;

    .line 37
    .line 38
    invoke-virtual {v5}, Lax/W7/c;->r()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    iget-object v0, v4, Lcom/alphainventor/filemanager/file/r$d;->b:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, v4, Lcom/alphainventor/filemanager/file/r$d;->a:Lax/W7/c;

    .line 51
    .line 52
    invoke-virtual {v2}, Lax/W7/c;->u()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v0, p2

    .line 64
    :goto_1
    const-string v2, "what case is this?"

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    invoke-static {v2}, Lax/z3/b;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget-object v4, p0, Lcom/alphainventor/filemanager/file/r;->i:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_7

    .line 79
    .line 80
    const-string v4, "root"

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const-string v4, "no-parent-id"

    .line 90
    .line 91
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    const-string p1, ".hidden-system-folder"

    .line 98
    .line 99
    invoke-virtual {p3, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_6

    .line 111
    .line 112
    invoke-static {v2}, Lax/z3/b;->e(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    move-object p2, v0

    .line 117
    goto :goto_0

    .line 118
    :cond_7
    :goto_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_8

    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    return-object p1

    .line 126
    :cond_8
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
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
.end method

.method private m0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->i:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
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
.end method

.method public static n0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/16 v0, 0x2f

    .line 6
    .line 7
    const/16 v1, 0x5f

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private declared-synchronized p0(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lax/W7/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lax/V7/a$c;->e()Lax/V7/a$c$d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "nextPageToken, files(kind,id,name,mimeType,parents,capabilities/canDownload,capabilities/canEdit,size,modifiedTime,createdTime,webContentLink,thumbnailLink,webViewLink,shortcutDetails,trashed)"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lax/V7/a$c$d;->J(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Lax/V7/a$c$d;->L(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lax/W7/d;

    .line 32
    .line 33
    invoke-virtual {v1}, Lax/W7/d;->o()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lax/W7/c;

    .line 52
    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception v1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v1}, Lax/W7/d;->q()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Lax/V7/a$c$d;->K(Ljava/lang/String;)Lax/V7/a$c$d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v1}, Lax/V7/a$c$d;->K(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-virtual {p1}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-gtz v1, :cond_0

    .line 91
    .line 92
    :cond_2
    monitor-exit p0

    .line 93
    return-object v0

    .line 94
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    throw p1
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

.method private q0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
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
.end method

.method public static r0(Lax/W7/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lax/W7/c;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/alphainventor/filemanager/file/r;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private s0(Lcom/alphainventor/filemanager/file/n;Lax/f3/G;Ljava/lang/String;JLjava/lang/Long;ZZLax/z3/c;Lax/l3/i;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;,
            Lax/e3/a;
        }
    .end annotation

    .line 1
    move-wide v5, p4

    .line 2
    new-instance v1, Lax/W7/c;

    .line 3
    .line 4
    invoke-direct {v1}, Lax/W7/c;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lax/W7/c;->H(Ljava/lang/String;)Lax/W7/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p3}, Lax/W7/c;->F(Ljava/lang/String;)Lax/W7/c;

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    if-eqz p6, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    cmp-long v4, v7, v2

    .line 26
    .line 27
    if-lez v4, :cond_0

    .line 28
    .line 29
    new-instance v4, Lax/T7/i;

    .line 30
    .line 31
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    invoke-direct {v4, v7, v8}, Lax/T7/i;-><init>(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Lax/W7/c;->G(Lax/T7/i;)Lax/W7/c;

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    if-eqz p8, :cond_1

    .line 43
    .line 44
    invoke-interface {p1}, Lax/f3/b;->u()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v7, 0x0

    .line 53
    :goto_0
    invoke-virtual {p2}, Lax/f3/G;->b()Ljava/io/InputStream;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :try_start_0
    new-instance v8, Lax/P7/y;

    .line 58
    .line 59
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 60
    .line 61
    invoke-direct {v9, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v8, p3, v9}, Lax/P7/y;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 65
    .line 66
    .line 67
    const-wide/16 v9, -0x1

    .line 68
    .line 69
    cmp-long v0, v5, v9

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v8, v5, v6}, Lax/P7/y;->h(J)Lax/P7/y;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object p1, v0

    .line 79
    move-object v3, p2

    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :catch_0
    move-exception v0

    .line 83
    :goto_1
    move-object p1, v0

    .line 84
    move-object v3, p2

    .line 85
    goto/16 :goto_8

    .line 86
    .line 87
    :catch_1
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :catch_2
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :catch_3
    move-exception v0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v8, v4}, Lax/P7/y;->g(Z)Lax/P7/y;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 94
    .line 95
    .line 96
    if-eqz v7, :cond_3

    .line 97
    .line 98
    :try_start_3
    check-cast p1, Lax/f3/E;

    .line 99
    .line 100
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 105
    .line 106
    invoke-virtual {v0}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, p1, v1, v8}, Lax/V7/a$c;->g(Ljava/lang/String;Lax/W7/c;Lax/P7/b;)Lax/V7/a$c$e;

    .line 111
    .line 112
    .line 113
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :try_start_4
    invoke-direct/range {p0 .. p1}, Lcom/alphainventor/filemanager/file/r;->j0(Lcom/alphainventor/filemanager/file/n;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    filled-new-array {p1}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Lax/W7/c;->I(Ljava/util/List;)Lax/W7/c;

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 133
    .line 134
    invoke-virtual {p1}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, v1, v8}, Lax/V7/a$c;->c(Lax/W7/c;Lax/P7/b;)Lax/V7/a$c$b;

    .line 139
    .line 140
    .line 141
    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 142
    :goto_3
    if-eqz p6, :cond_4

    .line 143
    .line 144
    :try_start_5
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    cmp-long v7, v0, v2

    .line 149
    .line 150
    if-lez v7, :cond_4

    .line 151
    .line 152
    const-string v0, "setModifiedDate"

    .line 153
    .line 154
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1}, Lax/V7/b;->F(Ljava/lang/String;Ljava/lang/Object;)Lax/V7/b;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    .line 158
    .line 159
    :cond_4
    :try_start_6
    invoke-virtual {p1}, Lax/N7/b;->r()Lax/M7/b;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v7, v4}, Lax/M7/b;->n(Z)Lax/M7/b;

    .line 164
    .line 165
    .line 166
    const/high16 v0, 0x100000

    .line 167
    .line 168
    invoke-virtual {v7, v0}, Lax/M7/b;->m(I)Lax/M7/b;

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/alphainventor/filemanager/file/r$a;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 172
    .line 173
    move-object v1, p0

    .line 174
    move-object v3, p2

    .line 175
    move-object/from16 v2, p9

    .line 176
    .line 177
    move-object/from16 v4, p10

    .line 178
    .line 179
    :try_start_7
    invoke-direct/range {v0 .. v6}, Lcom/alphainventor/filemanager/file/r$a;-><init>(Lcom/alphainventor/filemanager/file/r;Lax/z3/c;Ljava/io/InputStream;Lax/l3/i;J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v0}, Lax/M7/b;->s(Lax/M7/c;)Lax/M7/b;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lax/W7/c;

    .line 190
    .line 191
    if-eqz p9, :cond_6

    .line 192
    .line 193
    invoke-interface/range {p9 .. p9}, Lax/z3/c;->isCancelled()Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_5

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_5
    new-instance p1, Lax/e3/a;

    .line 201
    .line 202
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 203
    .line 204
    .line 205
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    :goto_4
    move-object p1, v0

    .line 208
    goto :goto_9

    .line 209
    :catch_4
    move-exception v0

    .line 210
    :goto_5
    move-object p1, v0

    .line 211
    goto :goto_8

    .line 212
    :catch_5
    move-exception v0

    .line 213
    goto :goto_5

    .line 214
    :catch_6
    move-exception v0

    .line 215
    goto :goto_5

    .line 216
    :catch_7
    move-exception v0

    .line 217
    goto :goto_5

    .line 218
    :cond_6
    :goto_6
    if-eqz p1, :cond_8

    .line 219
    .line 220
    if-eqz v3, :cond_7

    .line 221
    .line 222
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 223
    .line 224
    .line 225
    :catch_8
    :cond_7
    return-void

    .line 226
    :cond_8
    :try_start_9
    new-instance p1, Lax/e3/j;

    .line 227
    .line 228
    const-string p2, "GoogleDrive insert() returns null"

    .line 229
    .line 230
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p1

    .line 234
    :catchall_2
    move-exception v0

    .line 235
    move-object v3, p2

    .line 236
    goto :goto_4

    .line 237
    :catch_9
    move-exception v0

    .line 238
    :goto_7
    move-object v3, p2

    .line 239
    goto :goto_5

    .line 240
    :catch_a
    move-exception v0

    .line 241
    goto :goto_7

    .line 242
    :catch_b
    move-exception v0

    .line 243
    goto :goto_7

    .line 244
    :catch_c
    move-exception v0

    .line 245
    goto :goto_7

    .line 246
    :cond_9
    move-object v3, p2

    .line 247
    new-instance p1, Lax/e3/j;

    .line 248
    .line 249
    const-string p2, "Dst parent not found"

    .line 250
    .line 251
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 255
    :goto_8
    if-eqz p9, :cond_a

    .line 256
    .line 257
    :try_start_a
    invoke-interface/range {p9 .. p9}, Lax/z3/c;->isCancelled()Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-eqz p2, :cond_a

    .line 262
    .line 263
    new-instance p1, Lax/e3/a;

    .line 264
    .line 265
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :cond_a
    const-string p2, "googledrive write file"

    .line 270
    .line 271
    invoke-direct {p0, p2, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 276
    :goto_9
    if-eqz v3, :cond_b

    .line 277
    .line 278
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 279
    .line 280
    .line 281
    :catch_d
    :cond_b
    throw p1
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
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
.end method


# virtual methods
.method public G()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public R(Lcom/alphainventor/filemanager/file/n;Lax/f3/G;Ljava/lang/String;JLjava/lang/Long;Lcom/alphainventor/filemanager/file/p;ZLax/z3/c;Lax/l3/i;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;,
            Lax/e3/a;
        }
    .end annotation

    .line 1
    const/4 v8, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move-object/from16 v6, p6

    .line 8
    .line 9
    move/from16 v7, p8

    .line 10
    .line 11
    move-object/from16 v9, p9

    .line 12
    .line 13
    move-object/from16 v10, p10

    .line 14
    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/alphainventor/filemanager/file/r;->s0(Lcom/alphainventor/filemanager/file/n;Lax/f3/G;Ljava/lang/String;JLjava/lang/Long;ZZLax/z3/c;Lax/l3/i;)V

    .line 16
    .line 17
    .line 18
    return-void
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
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alphainventor/filemanager/file/r;->j:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method public a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/alphainventor/filemanager/file/n;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    sget-object v1, Lax/f3/d0;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v0, Lax/f3/E;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    const-string v1, "/.hidden-system-folder"

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/alphainventor/filemanager/file/r;->b0()Lax/f3/E;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    :try_start_0
    invoke-static {p1}, Lax/f3/d0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/alphainventor/filemanager/file/r;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lax/f3/E;

    .line 60
    .line 61
    invoke-static {p1}, Lax/f3/d0;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {p0, v2}, Lcom/alphainventor/filemanager/file/r;->c0(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1}, Lax/f3/E;->o()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_8

    .line 74
    .line 75
    invoke-virtual {v1}, Lax/f3/E;->isDirectory()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_8

    .line 80
    .line 81
    invoke-direct {p0, v1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v6, "\' in parents and name = \'"

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, "\' and trashed = false"

    .line 105
    .line 106
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {p0, v3}, Lcom/alphainventor/filemanager/file/r;->p0(Ljava/lang/String;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-lez v5, :cond_4

    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    move-object v6, v0

    .line 131
    check-cast v6, Lax/W7/c;

    .line 132
    .line 133
    new-instance v2, Lax/f3/E;

    .line 134
    .line 135
    invoke-virtual {v1}, Lax/f3/E;->u()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-direct {p0, v1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 143
    move-object v3, p0

    .line 144
    move-object v7, p1

    .line 145
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;Ljava/lang/String;Lax/W7/c;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v2}, Lax/f3/b;->isDirectory()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_3

    .line 153
    .line 154
    iget-object p1, v3, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 155
    .line 156
    invoke-virtual {p1, v7, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    iget-object p1, v3, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 160
    .line 161
    invoke-interface {v2}, Lax/f3/b;->u()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p1, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    return-object v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :goto_0
    move-object p1, v0

    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :catch_1
    move-exception v0

    .line 178
    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    .line 180
    goto :goto_0

    .line 181
    :catch_3
    move-exception v0

    .line 182
    :goto_1
    move-object p1, v0

    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :cond_3
    return-object v2

    .line 186
    :catch_4
    move-exception v0

    .line 187
    :goto_2
    move-object v3, p0

    .line 188
    goto :goto_0

    .line 189
    :catch_5
    move-exception v0

    .line 190
    goto :goto_2

    .line 191
    :catch_6
    move-exception v0

    .line 192
    goto :goto_2

    .line 193
    :catch_7
    move-exception v0

    .line 194
    move-object v3, p0

    .line 195
    goto :goto_1

    .line 196
    :cond_4
    move-object v3, p0

    .line 197
    move-object v7, p1

    .line 198
    const-string p1, "_"

    .line 199
    .line 200
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_7

    .line 205
    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v0, "\' in parents and trashed = false"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->p0(Ljava/lang/String;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_7

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-lez v0, :cond_7

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    move-object v11, v0

    .line 253
    check-cast v11, Lax/W7/c;

    .line 254
    .line 255
    invoke-static {v11}, Lcom/alphainventor/filemanager/file/r;->r0(Lax/W7/c;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_5

    .line 264
    .line 265
    move-object v12, v7

    .line 266
    new-instance v7, Lax/f3/E;

    .line 267
    .line 268
    invoke-virtual {v1}, Lax/f3/E;->u()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-direct {p0, v1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    move-object v8, v3

    .line 277
    :try_start_2
    invoke-direct/range {v7 .. v12}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;Ljava/lang/String;Lax/W7/c;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_8

    .line 278
    .line 279
    .line 280
    move-object p1, v7

    .line 281
    move-object v3, v8

    .line 282
    move-object v7, v12

    .line 283
    :try_start_3
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_6

    .line 288
    .line 289
    iget-object v0, v3, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 290
    .line 291
    invoke-virtual {v0, v7, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    iget-object v0, v3, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 295
    .line 296
    invoke-interface {p1}, Lax/f3/b;->u()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    :cond_6
    return-object p1

    .line 308
    :catch_8
    move-exception v0

    .line 309
    :goto_3
    move-object v3, v8

    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :catch_9
    move-exception v0

    .line 313
    goto :goto_3

    .line 314
    :catch_a
    move-exception v0

    .line 315
    goto :goto_3

    .line 316
    :catch_b
    move-exception v0

    .line 317
    move-object v3, v8

    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :cond_7
    new-instance p1, Lax/f3/E;

    .line 321
    .line 322
    invoke-virtual {v1}, Lax/f3/E;->u()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-direct {p0, v1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-direct {p1, p0, v0, v1, v7}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-object p1

    .line 334
    :cond_8
    move-object v3, p0

    .line 335
    move-object v7, p1

    .line 336
    new-instance p1, Lax/f3/E;

    .line 337
    .line 338
    invoke-direct {p1, p0, v7}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 339
    .line 340
    .line 341
    return-object p1

    .line 342
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 343
    .line 344
    .line 345
    const-string v0, "GoogleDrive getFileInfo"

    .line 346
    .line 347
    invoke-direct {p0, v0, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    throw p1

    .line 352
    :goto_5
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lax/sb/b;->g()Lax/sb/b;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const-string v1, "GoogleDrive queryFiles null"

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, p1}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 371
    .line 372
    .line 373
    const-string v0, "GoogleDrive getFileInfo null"

    .line 374
    .line 375
    invoke-direct {p0, v0, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    throw p1

    .line 380
    :cond_9
    move-object v3, p0

    .line 381
    new-instance p1, Lax/e3/h;

    .line 382
    .line 383
    const-string v0, "Service is not connected!"

    .line 384
    .line 385
    invoke-direct {p1, v0}, Lax/e3/h;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw p1
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
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method public b1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    :try_start_0
    const-string v0, "url="

    .line 5
    .line 6
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x4

    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p2

    .line 24
    goto :goto_2

    .line 25
    :catch_1
    move-exception p2

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/alphainventor/filemanager/file/r;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lax/f3/E;

    .line 32
    .line 33
    invoke-virtual {p2}, Lax/f3/E;->j0()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_2
    invoke-virtual {p2}, Lax/f3/E;->j0()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :goto_1
    iget-object p3, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 45
    .line 46
    invoke-virtual {p3}, Lax/N7/a;->e()Lax/P7/q;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    new-instance v0, Lax/P7/g;

    .line 51
    .line 52
    invoke-direct {v0, p2}, Lax/P7/g;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v0}, Lax/P7/q;->a(Lax/P7/g;)Lax/P7/p;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lax/P7/p;->b()Lax/P7/s;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    .line 64
    .line 65
    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Lax/P7/s;->b(Ljava/io/OutputStream;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    return-object p1
    .line 85
    .line 86
    .line 87
.end method

.method public c1(Lcom/alphainventor/filemanager/file/n;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public d1(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/m$f;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alphainventor/filemanager/file/n;",
            "Lcom/alphainventor/filemanager/file/m$f;",
            ")",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const-string p2, "/.hidden-system-folder"

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p2}, Lax/z3/b;->c(Z)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lax/f3/E;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/alphainventor/filemanager/file/r;->f0(Lax/f3/E;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/alphainventor/filemanager/file/n;

    .line 47
    .line 48
    invoke-interface {v0}, Lax/f3/b;->isDirectory()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-interface {v0}, Lax/f3/b;->u()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-object p1

    .line 78
    :cond_2
    new-instance p1, Lax/e3/e;

    .line 79
    .line 80
    invoke-direct {p1}, Lax/e3/e;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_3
    new-instance p1, Lax/e3/t;

    .line 85
    .line 86
    invoke-direct {p1}, Lax/e3/t;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1
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

.method public e1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public f0(Lax/f3/E;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lax/f3/E;",
            ")",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/alphainventor/filemanager/file/r;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lax/V7/a$c;->e()Lax/V7/a$c$d;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "nextPageToken, files(kind,id,name,mimeType,parents,capabilities/canDownload,capabilities/canEdit,size,modifiedTime,createdTime,webContentLink,thumbnailLink,webViewLink,shortcutDetails,trashed)"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lax/V7/a$c$d;->J(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "\'"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "\' in parents and trashed = false"

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v2, v1}, Lax/V7/a$c$d;->L(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_0
    invoke-virtual {v1}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lax/W7/d;

    .line 63
    .line 64
    invoke-virtual {v2}, Lax/W7/d;->o()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    move-object v9, v4

    .line 83
    check-cast v9, Lax/W7/c;

    .line 84
    .line 85
    new-instance v5, Lax/f3/E;

    .line 86
    .line 87
    invoke-virtual {p1}, Lax/f3/E;->u()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v9}, Lcom/alphainventor/filemanager/file/r;->r0(Lax/W7/c;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v4, v6}, Lax/f3/d0;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    .line 107
    move-object v6, p0

    .line 108
    :try_start_1
    invoke-direct/range {v5 .. v10}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;Ljava/lang/String;Lax/W7/c;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :goto_1
    move-object p1, v0

    .line 117
    goto :goto_6

    .line 118
    :catch_1
    move-exception v0

    .line 119
    :goto_2
    move-object p1, v0

    .line 120
    goto :goto_7

    .line 121
    :catch_2
    move-exception v0

    .line 122
    goto :goto_2

    .line 123
    :catch_3
    move-exception v0

    .line 124
    :goto_3
    move-object p1, v0

    .line 125
    goto :goto_8

    .line 126
    :catch_4
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :catch_5
    move-exception v0

    .line 129
    move-object v6, p0

    .line 130
    goto :goto_1

    .line 131
    :catch_6
    move-exception v0

    .line 132
    :goto_4
    move-object v6, p0

    .line 133
    goto :goto_2

    .line 134
    :catch_7
    move-exception v0

    .line 135
    goto :goto_4

    .line 136
    :catch_8
    move-exception v0

    .line 137
    :goto_5
    move-object v6, p0

    .line 138
    goto :goto_3

    .line 139
    :catch_9
    move-exception v0

    .line 140
    goto :goto_5

    .line 141
    :cond_1
    move-object v6, p0

    .line 142
    invoke-virtual {v2}, Lax/W7/d;->q()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Lax/V7/a$c$d;->K(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    invoke-virtual {v1}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    if-gtz v2, :cond_0

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :goto_6
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lax/sb/b;->g()Lax/sb/b;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v1, "GoogleDrive: getChildFileList : OOM"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lax/e3/j;

    .line 188
    .line 189
    invoke-direct {v0, p1}, Lax/e3/j;-><init>(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :goto_7
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lax/sb/b;->g()Lax/sb/b;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v1, "GoogleDrive: getChildFileList"

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 212
    .line 213
    .line 214
    new-instance v0, Lax/e3/j;

    .line 215
    .line 216
    invoke-direct {v0, p1}, Lax/e3/j;-><init>(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :goto_8
    const-string v0, "GD getChildList"

    .line 221
    .line 222
    invoke-direct {p0, v0, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    throw p1

    .line 227
    :cond_2
    move-object v6, p0

    .line 228
    :cond_3
    :goto_9
    return-object v0
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
.end method

.method public f1(Lcom/alphainventor/filemanager/file/n;)Ljava/lang/String;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lax/f3/E;

    .line 3
    .line 4
    invoke-virtual {v0}, Lax/f3/E;->j0()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "url="

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lax/f3/E;->j0()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, Lax/f3/A;->J(Lcom/alphainventor/filemanager/file/n;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v0}, Lax/f3/B;->a0(Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_1
    return-object v2
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
.end method

.method public g1(Lcom/alphainventor/filemanager/file/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/alphainventor/filemanager/file/r;->q0(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lax/W7/c;

    .line 19
    .line 20
    invoke-direct {v0}, Lax/W7/c;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lax/W7/c;->J(Ljava/lang/Boolean;)Lax/W7/c;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p1}, Lax/f3/b;->u()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1, v0}, Lax/V7/a$c;->f(Ljava/lang/String;Lax/W7/c;)Lax/V7/a$c$e;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    new-instance p1, Lax/e3/t;

    .line 51
    .line 52
    invoke-direct {p1}, Lax/e3/t;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    new-instance v0, Lax/e3/j;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Lax/e3/j;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    const-string v0, "GoogleDrive deleteFileRecursively"

    .line 66
    .line 67
    invoke-direct {p0, v0, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    throw p1

    .line 72
    :cond_1
    new-instance p1, Lax/e3/h;

    .line 73
    .line 74
    const-string v0, "Service is not connected!"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Lax/e3/h;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
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
    .line 137
    .line 138
    .line 139
.end method

.method public h1(Lcom/alphainventor/filemanager/file/n;J)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    move-object v0, p1

    .line 6
    check-cast v0, Lax/f3/E;

    .line 7
    .line 8
    invoke-virtual {v0}, Lax/f3/E;->h0()Lax/W7/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Lax/f3/E;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lax/V7/a$c;->d(Ljava/lang/String;)Lax/V7/a$c$c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    cmp-long v2, p2, v0

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lax/N7/b;->s()Lax/P7/m;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "bytes="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, "-"

    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Lax/P7/m;->P(Ljava/lang/String;)Lax/P7/m;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :catch_2
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lax/V7/a$c$c;->m()Ljava/io/InputStream;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_1
    new-instance p2, Lax/e3/j;

    .line 78
    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "The file doesn\'t have any content stored on Drive : "

    .line 85
    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p2, p1}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    new-instance p2, Lax/e3/j;

    .line 105
    .line 106
    invoke-direct {p2, p1}, Lax/e3/j;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw p2

    .line 110
    :goto_2
    const-string p2, "googledrive getInputstream"

    .line 111
    .line 112
    invoke-direct {p0, p2, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    throw p1

    .line 117
    :cond_2
    new-instance p1, Lax/e3/h;

    .line 118
    .line 119
    const-string p2, "Service is not connected!"

    .line 120
    .line 121
    invoke-direct {p1, p2}, Lax/e3/h;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1
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

.method public i1(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/z3/c;Lax/l3/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lax/f3/b;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p3}, Lax/z3/b;->a(Z)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_6

    .line 13
    .line 14
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-direct {p0, p3}, Lcom/alphainventor/filemanager/file/r;->q0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lax/f3/b;->p()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    new-instance p3, Lax/W7/c;

    .line 32
    .line 33
    invoke-direct {p3}, Lax/W7/c;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lax/T7/i;

    .line 37
    .line 38
    invoke-interface {p1}, Lax/f3/b;->q()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-direct {v2, v3, v4}, Lax/T7/i;-><init>(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v2}, Lax/W7/c;->G(Lax/T7/i;)Lax/W7/c;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p3, v2}, Lax/W7/c;->H(Ljava/lang/String;)Lax/W7/c;

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 56
    .line 57
    invoke-virtual {v2}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v3, p1

    .line 62
    check-cast v3, Lax/f3/E;

    .line 63
    .line 64
    invoke-direct {p0, v3}, Lcom/alphainventor/filemanager/file/r;->Y(Lax/f3/E;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3, p3}, Lax/V7/a$c;->f(Ljava/lang/String;Lax/W7/c;)Lax/V7/a$c$e;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    const-string v2, "name"

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/alphainventor/filemanager/file/r;->j0(Lcom/alphainventor/filemanager/file/n;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p2}, Lcom/alphainventor/filemanager/file/r;->j0(Lcom/alphainventor/filemanager/file/n;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-eqz p2, :cond_2

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    invoke-virtual {p3, p2}, Lax/V7/a$c$e;->I(Ljava/lang/String;)Lax/V7/a$c$e;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p1}, Lax/V7/a$c$e;->K(Ljava/lang/String;)Lax/V7/a$c$e;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :catch_1
    move-exception p1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    new-instance p1, Lax/e3/j;

    .line 112
    .line 113
    const-string p2, "Source parent does not exist"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_2
    new-instance p1, Lax/e3/j;

    .line 120
    .line 121
    const-string p2, "Target parent does not exist"

    .line 122
    .line 123
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_3
    :goto_0
    invoke-virtual {p3, v2}, Lax/V7/a$c$e;->J(Ljava/lang/String;)Lax/V7/a$c$e;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    if-eqz p4, :cond_4

    .line 137
    .line 138
    invoke-interface {p4, v0, v1, v0, v1}, Lax/l3/i;->a(JJ)V

    .line 139
    .line 140
    .line 141
    :cond_4
    return-void

    .line 142
    :cond_5
    new-instance p1, Lax/e3/j;

    .line 143
    .line 144
    const-string p2, "result is null"

    .line 145
    .line 146
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    const-string p2, "GD moveFile"

    .line 151
    .line 152
    invoke-direct {p0, p2, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    throw p1

    .line 157
    :cond_6
    new-instance p1, Lax/e3/t;

    .line 158
    .line 159
    invoke-direct {p1}, Lax/e3/t;-><init>()V

    .line 160
    .line 161
    .line 162
    throw p1
.end method

.method public j1(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/alphainventor/filemanager/file/c$a;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Lcom/alphainventor/filemanager/file/c$a;->J()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/alphainventor/filemanager/file/r$e;

    .line 5
    .line 6
    check-cast p2, Lax/g3/L;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/alphainventor/filemanager/file/r;->d0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, p0, p2, v0, p3}, Lcom/alphainventor/filemanager/file/r$e;-><init>(Lcom/alphainventor/filemanager/file/r;Lax/g3/L;Ljava/lang/String;Lcom/alphainventor/filemanager/file/c$a;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    new-array p2, p2, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lax/z3/q;->i([Ljava/lang/Object;)Lax/z3/q;

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/alphainventor/filemanager/file/r;->m:Lcom/alphainventor/filemanager/file/r$e;

    .line 22
    .line 23
    return-void
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

.method public k1()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public l1(Lcom/alphainventor/filemanager/file/n;Lax/f3/G;Ljava/lang/String;JLjava/lang/Long;Lcom/alphainventor/filemanager/file/p;ZLax/z3/c;Lax/l3/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;,
            Lax/e3/a;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lax/z3/b;->a(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-wide/from16 v5, p4

    .line 14
    .line 15
    move-object/from16 v7, p6

    .line 16
    .line 17
    move/from16 v8, p8

    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    move-object/from16 v11, p10

    .line 22
    .line 23
    invoke-direct/range {v1 .. v11}, Lcom/alphainventor/filemanager/file/r;->s0(Lcom/alphainventor/filemanager/file/n;Lax/f3/G;Ljava/lang/String;JLjava/lang/Long;ZZLax/z3/c;Lax/l3/i;)V

    .line 24
    .line 25
    .line 26
    return-void
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
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
.end method

.method declared-synchronized m(Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;ZZLax/l3/h;Lax/z3/c;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v7, p3

    .line 8
    .line 9
    move-object/from16 v8, p5

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/alphainventor/filemanager/file/m;->o(Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;ZZLax/l3/h;Lax/z3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    :try_start_1
    invoke-direct {v1, v2}, Lcom/alphainventor/filemanager/file/r;->c0(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    invoke-static {v0}, Lax/f3/d0;->E(Lcom/alphainventor/filemanager/file/n;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "name contains \'"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "\' and trashed = false"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/alphainventor/filemanager/file/r;->o0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 p4, 0x1

    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :catch_1
    move-exception v0

    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_1
    invoke-static {}, Lax/c3/b;->k()Lax/c3/b;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, v0}, Lax/c3/b;->g(Lcom/alphainventor/filemanager/file/n;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    new-instance v4, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    const-string v3, "Search"

    .line 90
    .line 91
    invoke-static {v3}, Lax/f3/q;->c(Ljava/lang/String;)Lax/f3/q;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v4, v3}, Lax/f3/q;->g(Ljava/util/List;Lax/f3/q;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3, v2, v7, v12}, Lax/f3/B;->h(Ljava/util/List;Ljava/lang/String;ZZ)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_2

    .line 110
    .line 111
    invoke-interface {v8, v2, v12}, Lax/l3/h;->i0(Ljava/util/List;Z)V

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v0}, Lax/f3/b;->u()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v0, Lax/f3/E;

    .line 123
    .line 124
    invoke-direct {v1, v0}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-direct {v1}, Lcom/alphainventor/filemanager/file/r;->X()Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-direct {v1, v3, v6}, Lcom/alphainventor/filemanager/file/r;->e0(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/HashSet;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v13, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/4 v2, 0x1

    .line 146
    const/4 v14, 0x0

    .line 147
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-eqz v15, :cond_6

    .line 152
    .line 153
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    check-cast v15, Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v2, :cond_3

    .line 160
    .line 161
    const/16 p4, 0x1

    .line 162
    .line 163
    const/4 v2, 0x0

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    const/16 p4, 0x1

    .line 166
    .line 167
    const-string v11, " or "

    .line 168
    .line 169
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    :goto_1
    const-string v11, "\'"

    .line 173
    .line 174
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v11, "\' in parents"

    .line 181
    .line 182
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    add-int/lit8 v14, v14, 0x1

    .line 186
    .line 187
    const/16 v11, 0x12c

    .line 188
    .line 189
    if-lt v14, v11, :cond_5

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v11, "name contains \'"

    .line 197
    .line 198
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v11, "\' and ("

    .line 205
    .line 206
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v11, ") and trashed = false"

    .line 217
    .line 218
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    new-instance v11, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual/range {v1 .. v6}, Lcom/alphainventor/filemanager/file/r;->o0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 235
    .line 236
    .line 237
    invoke-static {v11, v10, v7, v12}, Lax/f3/B;->h(Ljava/util/List;Ljava/lang/String;ZZ)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-eqz v1, :cond_4

    .line 242
    .line 243
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_4

    .line 248
    .line 249
    invoke-interface {v8, v1, v12}, Lax/l3/h;->i0(Ljava/util/List;Z)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :catchall_1
    move-exception v0

    .line 254
    move-object/from16 v1, p0

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :catch_2
    move-exception v0

    .line 258
    :goto_2
    move-object/from16 v1, p0

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :catch_3
    move-exception v0

    .line 262
    goto :goto_2

    .line 263
    :cond_4
    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    .line 265
    .line 266
    const/4 v2, 0x1

    .line 267
    const/4 v14, 0x0

    .line 268
    :cond_5
    move-object/from16 v1, p0

    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_6
    const/16 p4, 0x1

    .line 272
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-lez v1, :cond_7

    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v2, "name contains \'"

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v2, "\' and ("

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, ") and trashed = false"

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    move-object/from16 v1, p0

    .line 319
    .line 320
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/alphainventor/filemanager/file/r;->o0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_7
    move-object/from16 v1, p0

    .line 329
    .line 330
    :goto_4
    if-nez v0, :cond_8

    .line 331
    .line 332
    monitor-exit p0

    .line 333
    return-void

    .line 334
    :cond_8
    :try_start_4
    invoke-static {v0, v10, v7, v12}, Lax/f3/B;->h(Ljava/util/List;Ljava/lang/String;ZZ)Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const/4 v2, 0x1

    .line 339
    invoke-interface {v8, v0, v2}, Lax/l3/h;->i0(Ljava/util/List;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    .line 341
    .line 342
    monitor-exit p0

    .line 343
    return-void

    .line 344
    :goto_5
    :try_start_5
    const-string v2, "do search"

    .line 345
    .line 346
    invoke-direct {v1, v2, v0}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    throw v0

    .line 351
    :goto_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 352
    throw v0
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
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
.end method

.method public m1(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/z3/c;Lax/l3/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lax/f3/b;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p3}, Lax/z3/b;->a(Z)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_5

    .line 13
    .line 14
    move-object p3, p1

    .line 15
    check-cast p3, Lax/f3/E;

    .line 16
    .line 17
    new-instance v0, Lax/W7/c;

    .line 18
    .line 19
    invoke-direct {v0}, Lax/W7/c;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lax/f3/b;->q()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    cmp-long v5, v1, v3

    .line 29
    .line 30
    if-ltz v5, :cond_0

    .line 31
    .line 32
    new-instance v3, Lax/T7/i;

    .line 33
    .line 34
    invoke-direct {v3, v1, v2}, Lax/T7/i;-><init>(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lax/W7/c;->G(Lax/T7/i;)Lax/W7/c;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lax/W7/c;->H(Ljava/lang/String;)Lax/W7/c;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    invoke-direct {p0, p2}, Lcom/alphainventor/filemanager/file/r;->j0(Lcom/alphainventor/filemanager/file/n;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    filled-new-array {p2}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {v0, p2}, Lax/W7/c;->I(Ljava/util/List;)Lax/W7/c;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance p1, Lax/e3/j;

    .line 80
    .line 81
    const-string p2, "Dst parent not found"

    .line 82
    .line 83
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lax/f3/b;->p()J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 92
    .line 93
    invoke-virtual {v1}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-direct {p0, p3}, Lcom/alphainventor/filemanager/file/r;->Y(Lax/f3/E;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {v1, p3, v0}, Lax/V7/a$c;->a(Ljava/lang/String;Lax/W7/c;)Lax/V7/a$c$a;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p3}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Lax/W7/c;

    .line 110
    .line 111
    if-eqz p3, :cond_4

    .line 112
    .line 113
    if-eqz p4, :cond_3

    .line 114
    .line 115
    invoke-interface {p4, p1, p2, p1, p2}, Lax/l3/i;->a(JJ)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catch_0
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p1

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    return-void

    .line 124
    :cond_4
    new-instance p1, Lax/e3/j;

    .line 125
    .line 126
    const-string p2, "GoogleDrive copy returns null"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    const-string p2, "GD copyFile"

    .line 133
    .line 134
    invoke-direct {p0, p2, p1}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    throw p1

    .line 139
    :cond_5
    new-instance p1, Lax/e3/t;

    .line 140
    .line 141
    const-string p2, "not existing source file"

    .line 142
    .line 143
    invoke-direct {p1, p2}, Lax/e3/t;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1
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
.end method

.method public n(Lcom/alphainventor/filemanager/file/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lax/f3/E;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Lax/f3/b;->m()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lax/f3/E;

    .line 13
    .line 14
    invoke-virtual {v0}, Lax/f3/E;->h0()Lax/W7/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lax/W7/c;->w()Lax/W7/c$f;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lax/W7/c;->w()Lax/W7/c$f;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lax/W7/c$f;->o()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 35
    .line 36
    invoke-virtual {v1}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lax/V7/a$c;->d(Ljava/lang/String;)Lax/V7/a$c$c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "size"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lax/V7/a$c$c;->I(Ljava/lang/String;)Lax/V7/a$c$c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lax/W7/c;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0}, Lax/W7/c;->z()Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    check-cast p1, Lax/f3/E;

    .line 65
    .line 66
    invoke-virtual {v0}, Lax/W7/c;->z()Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-virtual {p1, v0, v1}, Lax/f3/E;->m0(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception p1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-void

    .line 81
    :goto_0
    new-instance v0, Lax/e3/j;

    .line 82
    .line 83
    invoke-direct {v0, p1}, Lax/e3/j;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_1
    new-instance v0, Lax/e3/j;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "Invalid File Type :"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {v0, p1}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
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

.method public n1(Lcom/alphainventor/filemanager/file/n;)Z
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/alphainventor/filemanager/file/r;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lax/f3/E;

    .line 11
    .line 12
    invoke-virtual {v0}, Lax/f3/E;->o()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    new-instance v2, Lax/W7/c;

    .line 27
    .line 28
    invoke-direct {v2}, Lax/W7/c;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lax/W7/c;->H(Ljava/lang/String;)Lax/W7/c;

    .line 36
    .line 37
    .line 38
    const-string v3, "application/vnd.google-apps.folder"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lax/W7/c;->F(Ljava/lang/String;)Lax/W7/c;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    filled-new-array {v3}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lax/W7/c;->I(Ljava/util/List;)Lax/W7/c;

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 59
    .line 60
    invoke-virtual {v3}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3, v2}, Lax/V7/a$c;->b(Lax/W7/c;)Lax/V7/a$c$b;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object v7, v2

    .line 73
    check-cast v7, Lax/W7/c;

    .line 74
    .line 75
    if-eqz v7, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    new-instance v3, Lax/f3/E;

    .line 82
    .line 83
    invoke-virtual {v0}, Lax/f3/E;->u()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-direct {p0, v0}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 91
    move-object v4, p0

    .line 92
    :try_start_1
    invoke-direct/range {v3 .. v8}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;Ljava/lang/String;Lax/W7/c;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, v4, Lcom/alphainventor/filemanager/file/r;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 96
    .line 97
    invoke-virtual {p1, v8, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object p1, v4, Lcom/alphainventor/filemanager/file/r;->l:Lj$/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    invoke-interface {v3}, Lax/f3/b;->u()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lax/e3/j; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .line 112
    .line 113
    const/4 p1, 0x1

    .line 114
    return p1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :goto_0
    move-object p1, v0

    .line 117
    goto :goto_2

    .line 118
    :catch_1
    move-exception v0

    .line 119
    goto :goto_0

    .line 120
    :catch_2
    move-exception v0

    .line 121
    goto :goto_0

    .line 122
    :catch_3
    move-exception v0

    .line 123
    :goto_1
    move-object v4, p0

    .line 124
    goto :goto_0

    .line 125
    :catch_4
    move-exception v0

    .line 126
    goto :goto_1

    .line 127
    :catch_5
    move-exception v0

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    move-object v4, p0

    .line 130
    return v1

    .line 131
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    return v1
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
.end method

.method public o0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alphainventor/filemanager/file/r$d;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p5

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lax/V7/a$c;->e()Lax/V7/a$c$d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "nextPageToken, files(kind,id,name,mimeType,parents,capabilities/canDownload,capabilities/canEdit,size,modifiedTime,createdTime,webContentLink,thumbnailLink,webViewLink,shortcutDetails,trashed)"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lax/V7/a$c$d;->J(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object/from16 v2, p1

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lax/V7/a$c$d;->L(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    :cond_0
    const/4 v9, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v8}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v10, v0

    .line 36
    check-cast v10, Lax/W7/d;

    .line 37
    .line 38
    invoke-virtual {v10}, Lax/W7/d;->o()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lax/W7/c;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/alphainventor/filemanager/file/r;->h0(Lax/W7/c;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    move-object/from16 v12, p4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    move-object/from16 v13, p3

    .line 75
    .line 76
    move-object/from16 v14, p4

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_1
    move-object v12, v9

    .line 80
    :goto_1
    if-nez v12, :cond_3

    .line 81
    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    move-object v1, p0

    .line 85
    move-object/from16 v4, p3

    .line 86
    .line 87
    move-object/from16 v5, p4

    .line 88
    .line 89
    move-object v3, v2

    .line 90
    move-object/from16 v2, p2

    .line 91
    .line 92
    invoke-direct/range {v1 .. v6}, Lcom/alphainventor/filemanager/file/r;->l0(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    move-object v2, v3

    .line 97
    if-eqz v12, :cond_2

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v3, 0x0

    .line 102
    :goto_2
    invoke-static {v3}, Lax/z3/b;->c(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    :cond_3
    if-nez v12, :cond_4

    .line 106
    .line 107
    move-object/from16 v13, p3

    .line 108
    .line 109
    move-object/from16 v14, p4

    .line 110
    .line 111
    :try_start_1
    invoke-direct {p0, v0, v13, v14, v6}, Lcom/alphainventor/filemanager/file/r;->k0(Lax/W7/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lax/f3/E;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    :goto_3
    move-object v4, v0

    .line 120
    goto :goto_4

    .line 121
    :catch_1
    move-exception v0

    .line 122
    goto :goto_5

    .line 123
    :cond_4
    move-object/from16 v13, p3

    .line 124
    .line 125
    move-object/from16 v14, p4

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :goto_4
    new-instance v0, Lax/f3/E;

    .line 129
    .line 130
    invoke-static {v4}, Lcom/alphainventor/filemanager/file/r;->r0(Lax/W7/c;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v12, v3}, Lax/f3/d0;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    move-object v3, v2

    .line 139
    move-object v1, p0

    .line 140
    invoke-direct/range {v0 .. v5}, Lax/f3/E;-><init>(Lcom/alphainventor/filemanager/file/r;Ljava/lang/String;Ljava/lang/String;Lax/W7/c;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    move-object/from16 v13, p3

    .line 148
    .line 149
    move-object/from16 v14, p4

    .line 150
    .line 151
    invoke-virtual {v10}, Lax/W7/d;->q()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v8, v0}, Lax/V7/a$c$d;->K(Ljava/lang/String;)Lax/V7/a$c$d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v9}, Lax/V7/a$c$d;->K(Ljava/lang/String;)Lax/V7/a$c$d;

    .line 163
    .line 164
    .line 165
    :goto_6
    invoke-virtual {v8}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    invoke-virtual {v8}, Lax/V7/a$c$d;->H()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-gtz v0, :cond_0

    .line 180
    .line 181
    :cond_6
    return-object v7
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
.end method

.method public o1(Lcom/alphainventor/filemanager/file/n;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/alphainventor/filemanager/file/r;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lax/f3/E;

    .line 11
    .line 12
    invoke-virtual {v1}, Lax/f3/E;->o()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    new-instance v2, Lax/W7/c;

    .line 27
    .line 28
    invoke-direct {v2}, Lax/W7/c;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lax/W7/c;->H(Ljava/lang/String;)Lax/W7/c;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lax/f3/b;->t()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Lax/W7/c;->F(Ljava/lang/String;)Lax/W7/c;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v1}, Lcom/alphainventor/filemanager/file/r;->g0(Lax/f3/E;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    filled-new-array {p1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v2, p1}, Lax/W7/c;->I(Ljava/util/List;)Lax/W7/c;

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 61
    .line 62
    invoke-virtual {p1}, Lax/V7/a;->n()Lax/V7/a$c;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v2}, Lax/V7/a$c;->b(Lax/W7/c;)Lax/V7/a$c$b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_2
    return v0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    goto :goto_0

    .line 81
    :catch_1
    move-exception p1

    .line 82
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    return v0
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
    .line 137
    .line 138
    .line 139
.end method

.method public p1()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public q1(Lcom/alphainventor/filemanager/file/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alphainventor/filemanager/file/r;->g1(Lcom/alphainventor/filemanager/file/n;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public r1(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public y()Lax/f3/k0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alphainventor/filemanager/file/r;->h:Lax/V7/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lax/V7/a;->m()Lax/V7/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lax/V7/a$a;->a()Lax/V7/a$a$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "storageQuota"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lax/V7/a$a$a;->I(Ljava/lang/String;)Lax/V7/a$a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lax/N7/b;->execute()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lax/W7/a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lax/W7/a;->o()Lax/W7/a$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lax/W7/a;->o()Lax/W7/a$b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lax/W7/a$b;->o()Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lax/W7/a;->o()Lax/W7/a$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lax/W7/a$b;->q()Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    new-instance v2, Lax/f3/k0;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    invoke-direct {v2, v3, v4, v0, v1}, Lax/f3/k0;-><init>(JJ)V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance v2, Lax/e3/j;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "no total :"

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ","

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v2, v0}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v2

    .line 100
    :cond_1
    new-instance v0, Lax/e3/j;

    .line 101
    .line 102
    const-string v1, "No storage Quota"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    const-string v1, "GD getStorageSpace"

    .line 109
    .line 110
    invoke-direct {p0, v1, v0}, Lcom/alphainventor/filemanager/file/r;->a0(Ljava/lang/String;Ljava/lang/Exception;)Lax/e3/j;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    throw v0
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
