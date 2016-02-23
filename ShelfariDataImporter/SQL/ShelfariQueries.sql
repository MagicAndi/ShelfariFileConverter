/****** Script for SelectTopNRows command from SSMS  ******/
SELECT	 [ID]
		,[Title]
		,[ISBN]
		,[MyRating]
		,[DateRead]
		,DATEPART(YEAR,[DateRead]) As 'Year Read'
		,[DateAdded]
		,[Bookshelves]
		,[MyReview]
		,[Author]
		,[PlanToRead]
		,[CurrentlyReading]
		,[Read]
  FROM	[Shelfari].[dbo].[ShelfariRecords]
  WHERE [Read] = 1
  ORDER BY [DateRead] DESC

  SELECT	 DATEPART(YEAR,[DateRead]) As 'Year Read'
			,COUNT(*)
  FROM [Shelfari].[dbo].[ShelfariRecords]
  WHERE [Read] = 1
  GROUP BY DATEPART(YEAR,[DateRead])
  ORDER BY DATEPART(YEAR,[DateRead]) DESC

  SELECT	*
  FROM		[Shelfari].[dbo].[ShelfariRecords]
  WHERE		[Read] = 1
			AND
			[DateRead] IS NULL
ORDER BY [DateAdded] DESC

SELECT	 [Title]
		,COUNT(*)
FROM	[Shelfari].[dbo].[ShelfariRecords]
GROUP BY [Title]
ORDER BY COUNT(*) DESC