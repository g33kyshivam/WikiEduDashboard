
class Utils

  # Take a list of items (ie, course ids) and breaks it into chunks of 50.
  # The Wikipedia liststudents API takes a maximum of 50 course ids per request.
  def self.chunk_requests(items, chunk_size=50)
    blocks = items.each_slice(chunk_size).to_a
    results = []
    blocks.each do |b|
      info = yield b
      results.push(*info)
    end
    return results
  end

end
