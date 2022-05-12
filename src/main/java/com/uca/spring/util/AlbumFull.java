package com.uca.spring.util;

public class AlbumFull {

  private String id;

  private String name;

  private String mostPopularTrack;

  private String dateOfRelease;

  private String artistName;

  public AlbumFull(String id, String name, String mostPopularTrack, String dateOfRelease, String artistName) {
    this.id = id;
    this.name = name;
    this.mostPopularTrack = mostPopularTrack;
    this.dateOfRelease = dateOfRelease;
    this.artistName = artistName;
  }

  public String getId() {
    return id; 
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public void setMostPopularTrack(String mostPopularTrack) {
    this.mostPopularTrack = mostPopularTrack;
  }

  public String getMostPopularTrack() {
    return mostPopularTrack;
  }  

  public String getDateOfRelease () {
    return dateOfRelease ;
  }

  public void setDateOfRelease (String dateOfRelease ) {
    this.dateOfRelease  = dateOfRelease ;
  }

  public String getArtistName() {
    return artistName;
  }

  public void setArtistName(String artistName) {
    this.artistName = artistName;
  }

}