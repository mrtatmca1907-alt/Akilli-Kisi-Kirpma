package com.besliaraclar;

public final class MediaCheckpoint {
    public final long added;
    public final long id;

    public MediaCheckpoint(long added, long id) {
        this.added = Math.max(0L, added);
        this.id = Math.max(0L, id);
    }

    public boolean accepts(long candidateAdded, long candidateId) {
        return candidateAdded > added || (candidateAdded == added && candidateId > id);
    }

    public MediaCheckpoint advance(long candidateAdded, long candidateId) {
        if (!accepts(candidateAdded, candidateId)) return this;
        return new MediaCheckpoint(candidateAdded, candidateId);
    }
}
